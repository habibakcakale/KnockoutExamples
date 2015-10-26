(function($) {
    $(document).ready(function() {
        function dateDemoViewModel() {
            var self = this;
            self.rightNow = ko.observable(Date.now());
        }

        ko.applyBindings(new dateDemoViewModel());
    });
})(jQuery);