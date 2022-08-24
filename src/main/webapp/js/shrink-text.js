$(function() {
    $('.fit-text').each(function() {
        // Fit height
        var fitHeight = parseInt($(this).css('min-height'));
        if ($(this).height() > fitHeight) {
            var c = 0;
            while ($(this).height() > fitHeight) {
                $(this).find('span').each(function() {
                    var fontSize = parseInt($(this).css('font-size'));
                    fontSize = fontSize - 1 + "px";
                    $(this).css('font-size', fontSize);
                });
                c++;
                if (c > 999) {
                    $(this).css('background', 'red');
                    break;
                }
            }
        }
        // Fit width
        var fitWidth = parseInt($(this).css('width'));
        var $div = $(this);
        $(this).find('span').each(function() {
            var c = 0;
            var spanWidth = parseInt($(this).width());
            while (fitWidth < spanWidth) {
                $div.find('span').each(function() {
                    var fontSize = parseInt($(this).css('font-size'));
                    fontSize = fontSize - 1 + "px";
                    $(this).css('font-size', fontSize);
                });
                spanWidth = parseInt($(this).width());
                c++;
                if (c > 999) {
                    $div.css('background', 'red');
                    break;
                }
            }
        });
    });
});
