ko.bindingHandlers.html.preprocess = function (value) {
    var name = ko.unwrap(value);
    return name + '.substring(0,3).toUpperCase()';
}