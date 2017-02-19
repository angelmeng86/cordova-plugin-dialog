var exec = require('cordova/exec');

exports.show = function(title, msg, success, error) {
    exec(success, error, "HndevDialog", "showMessageBox", [title, msg]);
};
