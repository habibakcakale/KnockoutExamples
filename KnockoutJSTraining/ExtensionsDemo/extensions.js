ko.extenders.trackClicks = function(target, options) {
    var linkActionClone = target().linkAction;
    target().clickCount = ko.observable(0);
    target().linkAction = function() {
        target().clickCount(target().clickCount() + 1);
        linkActionClone.apply(target());
    }
    return target;
}