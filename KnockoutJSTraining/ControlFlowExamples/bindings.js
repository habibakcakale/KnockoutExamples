(function ($) {

    $(document).ready(function () {
        function controlFlowViewModel() {
            var self = this;
            //Task 1
            this.transferAmount = ko.observable(0.0);
            //Task 2
            this.sourceAccount = ko.observable({ id: "Account", balance: 10.0 });
            //Task 3
            this.newTargetAccountId = ko.observable("");
            this.newTargetAccountBalance = ko.observable(0);
            self.targetAccounts = ko.observableArray([
            {
                id: ko.observable("Account 1"),
                balance: ko.observable(10.0)
            },
            {
                id: ko.observable("Account 2"),
                balance: ko.observable(15.0)
            },
            {
                id: ko.observable("Account 3"),
                balance: ko.observable(22.0)
            }]);
            this.addTargetAccount = function () {
                self.targetAccounts.push({
                    id: self.newTargetAccountId,
                    balance: self.newTargetAccountBalance
                });
            }
        }

        ko.applyBindings(new controlFlowViewModel());
    });
})($);