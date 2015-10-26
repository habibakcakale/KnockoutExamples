(function ($) {
    $(document).ready(function() {
        function demoPageViewModel() {
            var self = this;
            this.links = ko.observableArray([
                ko.observable({ text: "First Link", linkAction: function() { alert(this.text) } }),
                ko.observable({ text: "Second Link", linkAction: function() { alert(this.text) } }),
                ko.observable({ text: "Third Link", linkAction: function() { alert(this.text) } })
            ]);
            this.applyPageTracking = function() {
                for (var i = 0; i < self.links().length; i++) {
                    self.links()[i] = self.links()[i].extend({ trackClicks: true });
                    self.links()[i].notifySubscribers();
                }
            };
        }
        var vm = new demoPageViewModel();
        ko.applyBindings(vm);
    });
})(jQuery)