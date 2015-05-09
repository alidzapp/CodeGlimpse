(function() {
    var shown = false;
    var el;

    var api = {
        open: function(element) {
            el = element;
            var p     = element.getBoundingClientRect();
            var dx    = (window.innerWidth / 2) - (p.width / 2) - p.left;
            var dy    = (window.innerHeight / 2) - (p.height / 2) - p.top;
            var scale = (300 / p.width);

            shown = true;

            $(element).css({
                '-webkit-transform': 'translate(' + dx + 'px, ' + dy + 'px) scale(' + scale + ')',
                'zIndex':  '2'
            });
        },
        close: function() {
            shown = false;

            $(el).css({
                '-webkit-transform': 'translate(0, 0)',
                'z-index': '0'
            });
        },
        listen: function listen (element) {
            if (typeof element === 'string') {
                var elements = document.querySelectorAll(element);
                var i        = elements.length;

                while (i--) {
                    listen(elements[i]);
                }

                return;
            }

            element.addEventListener('click', function (event) {
                event.stopPropagation();

                if (shown) {
                    api.close();
                } else {
                    api.open(element);
                }
            });

            return this;
        }
    }

    window.addEventListener('scroll', api.close);

    // umd expose
    if (typeof exports == "object") {
        module.exports = api
    } else if (typeof define == "function" && define.amd) {
        define(function(){ return api })
    } else {
        this.Zoomerang = api
    }
})();
