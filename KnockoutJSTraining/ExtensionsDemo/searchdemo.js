(function($) {
    $(document).ready(function() {
        function searchDemoViewModel() {
            var self = this;
            var books = [
            {
                title: "Yarma Adam",
                author: "Ahmet Necatigil"
            }, {
                title: "Sefahat",
                author: "Mehmet Akif Ersoy"
            }, {
                title: "Aldatma Sanatı",
                author: "Mehmet Emin Caz"
            }];
            self.searchtoken = ko.observable();

            function containsToken(token, target) {
                return target.indexOf(token) > -1;
            }

            self.searchResult = ko.computed(function() {
                var result = [];
                for (var i = 0; i < books.length; i++) {
                    var item = books[i];
                    if (containsToken(self.searchtoken(), item.title) ||
                        containsToken(self.searchtoken(), item.author)) {
                        result.push(item);
                    }
                }
                return result;
            }).extend({ rateLimit: { method: 'notifyWhenChangesStop', timeout: 1000 } });
        }

        ko.applyBindings(new searchDemoViewModel());
    });
})(jQuery)