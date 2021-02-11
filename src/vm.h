#ifndef VM_H
#define VM_H

#include <signal.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

#include "compiler.h"
#include "const.h"
#include "hashtable.h"
#include "jstar.h"
#include "object.h"
#include "opcode.h"
#include "util.h"
#include "value.h"

// Enum encoding special method names needed at runtime
// See methodSyms array in vm.c
typedef enum MethodSymbol {
    // Constructor method
    SYM_CTOR,

    // Iterator methods
    SYM_ITER,
    SYM_NEXT,

    // Binary overloads
    SYM_ADD,
    SYM_SUB,
    SYM_MUL,
    SYM_DIV,
    SYM_MOD,

    // Reverse binary overloads
    SYM_RADD,
    SYM_RSUB,
    SYM_RMUL,
    SYM_RDIV,
    SYM_RMOD,

    // Subscript overloads
    SYM_GET,
    SYM_SET,

    // Comparison and ordering overloads
    SYM_EQ,
    SYM_LT,
    SYM_LE,
    SYM_GT,
    SYM_GE,
    SYM_NEG,

    // Sentinel
    SYM_END
} MethodSymbol;

// This stores the info needed to jump
// to handler code and to restore the
// VM state when handling exceptions
typedef struct Handler {
    enum {
        HANDLER_ENSURE,
        HANDLER_EXCEPT,
    } type;            // The type of the handler block
    uint8_t* address;  // The address of handler code
    Value* savedSp;    // Stack pointer to restore before executing the code at `address`
} Handler;

// Stackframe of a function executing in
// the virtual machine
typedef struct Frame {
    uint8_t* ip;                    // Instruction pointer
    Value* stack;                   // Base of stack for current frame
    Obj* fn;                        // Function associated with the frame (ObjClosure or ObjNative)
    Handler handlers[HANDLER_MAX];  // Exception handlers
    uint8_t handlerc;               // Exception handlers count
} Frame;

// The J* VM. This struct stores all the
// state needed to execute J* code.
struct JStarVM {
    // Paths searched for import
    ObjList* importPaths;

    // Built in classes
    ObjClass* clsClass;
    ObjClass* objClass;
    ObjClass* strClass;
    ObjClass* boolClass;
    ObjClass* lstClass;
    ObjClass* numClass;
    ObjClass* funClass;
    ObjClass* modClass;
    ObjClass* nullClass;
    ObjClass* stClass;
    ObjClass* tupClass;
    ObjClass* excClass;
    ObjClass* tableClass;
    ObjClass* udataClass;

    // Script arguments
    ObjList* argv;

    // The empty tuple (singleton)
    ObjTuple* emptyTup;

    // Current VM compiler (if any)
    Compiler* currCompiler;

    // Cached method names needed at runtime
    ObjString* methodSyms[SYM_END];

    // Loaded modules
    HashTable modules;

    // Current module and core module
    ObjModule *module, *core;

    // VM program stack and stack pointer
    size_t stackSz;
    Value *stack, *sp;

    // Frame stack
    Frame* frames;
    int frameSz, frameCount;

    // Stack used during native function calls
    Value* apiStack;

    // Constant string pool, for interned strings
    HashTable stringPool;

    // Linked list of all open upvalues
    ObjUpvalue* upvalues;

    // Callback function to report errors
    JStarErrorCB errorCallback;

    // If set, the VM will break the eval loop as soon as possible.
    // Can be set asynchronously by a signal handler
    volatile sig_atomic_t evalBreak;

    // Custom data associated with the VM
    void* customData;

    // ---- Memory management ----

    // Linked list of all allocated objects (used in
    // the sweep phase of GC to free unreached objects)
    Obj* objects;

    size_t allocated;  // Bytes currently allocated
    size_t nextGC;     // Bytes at which the next GC will be triggered
    int heapGrowRate;  // Rate at which the heap will grow after a GC

    // Stack used to recursevely reach all the fields of reached objects
    Obj** reachedStack;
    size_t reachedCapacity, reachedCount;
};

bool getValueField(JStarVM* vm, ObjString* name);
bool setValueField(JStarVM* vm, ObjString* name);

bool getValueSubscript(JStarVM* vm);
bool setValueSubscript(JStarVM* vm);

bool callValue(JStarVM* vm, Value callee, uint8_t argc);
bool invokeValue(JStarVM* vm, ObjString* name, uint8_t argc);

void reserveStack(JStarVM* vm, size_t needed);
void swapStackSlots(JStarVM* vm, int a, int b);

bool runEval(JStarVM* vm, int evalDepth);
bool unwindStack(JStarVM* vm, int depth);

inline void push(JStarVM* vm, Value v) {
    *vm->sp++ = v;
}

inline Value pop(JStarVM* vm) {
    return *--vm->sp;
}

inline Value peek(JStarVM* vm) {
    return vm->sp[-1];
}

inline Value peek2(JStarVM* vm) {
    return vm->sp[-2];
}

inline Value peekn(JStarVM* vm, int n) {
    return vm->sp[-(n + 1)];
}

inline ObjClass* getClass(JStarVM* vm, Value v) {
#ifdef JSTAR_NAN_TAGGING
    if(IS_NUM(v)) return vm->numClass;
    if(IS_OBJ(v)) return AS_OBJ(v)->cls;

    switch(GET_TAG(v)) {
    case TRUE_TAG:
    case FALSE_TAG:
        return vm->boolClass;
    case NULL_TAG:
    default:
        return vm->nullClass;
    }
#else
    switch(v.type) {
    case VAL_NUM:
        return vm->numClass;
    case VAL_BOOL:
        return vm->boolClass;
    case VAL_OBJ:
        return AS_OBJ(v)->cls;
    case VAL_HANDLE:
    case VAL_NULL:
    default:
        return vm->nullClass;
    }
#endif
}

inline bool isInstance(JStarVM* vm, Value i, ObjClass* cls) {
    for(ObjClass* c = getClass(vm, i); c != NULL; c = c->superCls) {
        if(c == cls) {
            return true;
        }
    }
    return false;
}

inline int apiStackIndex(JStarVM* vm, int slot) {
    ASSERT(vm->sp - slot > vm->apiStack, "API stack slot would be negative");
    ASSERT(vm->apiStack + slot < vm->sp, "API stack overflow");
    if(slot < 0) return vm->sp + slot - vm->apiStack;
    return slot;
}

// Get the value at API stack slot "slot"
inline Value apiStackSlot(JStarVM* vm, int slot) {
    ASSERT(vm->sp - slot > vm->apiStack, "API stack slot would be negative");
    ASSERT(vm->apiStack + slot < vm->sp, "API stack overflow");
    if(slot < 0) return vm->sp[slot];
    return vm->apiStack[slot];
}

#endif
