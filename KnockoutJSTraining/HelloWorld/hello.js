(function($) {
    $(document).ready(function() {
        function helloViewModel(n) {
            var self = this;
            self.name = ko.observable(n);
            self.countries = ko.observableArray(["TURKEY", " USA", "IRAQ"]);
            self.taxRate = ko.observable(10);
            self.price = ko.observable();
            self.taxedAmount = ko.computed(function() {
                return self.price() * self.taxRate();
            });
            self.addCountry = function () {
                self.countries.unshift(self.name());
            }
            //self.countries.subscribe(function (newValue) { // Task 5
            //    alert(newValue);
            //    this.dispose();//Will unsubscribe this function Task 5
            //});

            self.countries.subscribe(function () { // Task 5
                alert(this.countries());
                console.log(this.countries());
            }, this);
        }

        ko.applyBindings(new helloViewModel("Habib Akçakale"));
    });
})(jQuery)