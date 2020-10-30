var jstar_api = {};

var Module = {
    onRuntimeInitialized: function() {
        let _jstar_run = cwrap('jstar_run', 'number', ['string']);
        jstar_api = {
            out: "",
            err: "",
            run: function(source) {
                jstar_api.out = "";
                jstar_api.err = "";
                return _jstar_run(source)
            }
        };
    },
    print: function(text) {
        if(arguments.length > 1) text = Array.prototype.slice.call(arguments).join(' ');
        jstar_api.out += text + '\n';
    },
    printErr: function(text) {
        if(arguments.length > 1) text = Array.prototype.slice.call(arguments).join(' ');
        jstar_api.err += text + '\n';
    }
};
