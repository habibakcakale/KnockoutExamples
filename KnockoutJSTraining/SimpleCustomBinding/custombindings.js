(function($) {
    $(document).ready(function() {
        ko.bindingHandlers.datepicker = {
            init: function(element, valueAccessor, allBindings, viewModel, bindingContext) {
                // This will be called when the binding is first applied to an element
                // Set up any initial state, event handlers, etc. here
                var options = allBindings.get('options') || {};
                var $element = $(element);
                $element.datepicker(options);
                if (ko.isObservable(valueAccessor)) {
                    ko.utils.registerEventHandler(element, 'change', function(evet) {
                        var date = $(this).datepicker('getDate');
                        valueAccessor(date);
                    });
                }
                ko.utils.domNodeDisposal.addDisposeCallback(element, function() {
                    $(element).datepicker("destroy");
                });
            },
            update: function(element, valueAccessor, allBindings, viewModel, bindingContext) {
                // This will be called once when the binding is first applied to an element,
                // and again whenever any observables/computeds that are accessed change
                // Update the DOM element based on the supplied values here.
                var newValue = ko.unwrap(valueAccessor());
                var $element = $(element);
                var currentValue = $element.datepicker('getDate');
                if (newValue - currentValue) {
                    $element.datepicker('setDate', newValue);
                }
            }
        };
    });
})(jQuery)