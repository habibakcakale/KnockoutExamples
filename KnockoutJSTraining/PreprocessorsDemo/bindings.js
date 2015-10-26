(function($) {
    $(document).ready(function() {
        function preprocessorDemoViewModel() {
            this.countryName = ko.observable('Turkey');
        }

        ko.applyBindings(new preprocessorDemoViewModel());
    });
})(jQuery)