var tempbottomOfWindow;

var something = (function () {
    var executed = false;
    return function () {
        if (!executed) {
            executed = true;
            tempbottomOfWindow = $(window).scrollTop() + $(window).height()
        }
    };
})();

something(); // "do something" happens



//Progress Bar

$(document).ready(function ($) {
    function animateElements() {
        $('.progressbar').each(function () {
            var elementPos = $(this).offset().top;
            var topOfWindow = $(window).scrollTop();
            var bottomOfWindow = $(window).scrollTop() + $(window).height();

            var percent = $(this).find('.circle').attr('data-percent');
            var percentage = parseInt(percent, 10) / parseInt(100, 10);
            var animate = $(this).data('animate');

            // alert($(window).scrollTop() + $(window).height());

            if (elementPos < topOfWindow + $(window).height() - 30 && !animate) //&& !animate
            {
                $(this).data('animate', true);
                $(this).find('.circle').circleProgress({
                    startAngle: -Math.PI / 2,
                    value: percent / 100,
                    size: 120,
                    thickness: 20,
                    emptyFill: "red",
                    fill: {
                        color: 'green'
                    }
                }).on('circle-animation-progress', function (event, progress, stepValue) {
                    $(this).find('div').text((stepValue * 100).toFixed(1) + "%");
                }).stop();
            }
            else if (elementPos > topOfWindow + $(window).height() + 30) {
                //alert(elementPos + " " + bottomOfWindow);
                $(this).data('animate', true);
                $(this).find('.circle').circleProgress({
                    startAngle: -Math.PI / 2,
                    value: percent / 100,
                    size: 120,
                    thickness: 20,
                    emptyFill: "red",
                    fill: {
                        color: 'green'
                    }
                }).on('circle-animation-progress', function (event, progress, stepValue) {
                    $(this).find('div').text((stepValue * 100).toFixed(1) + "%");
                }).stop();


            }

            else if (bottomOfWindow == tempbottomOfWindow) {
                //alert($(window).scrollTop() + $(window).height());
                $(this).data('animate', true);
                $(this).find('.circle').circleProgress({
                    startAngle: -Math.PI / 2,
                    value: percent / 100,
                    size: 120,
                    thickness: 20,
                    emptyFill: "red",
                    fill: {
                        color: 'green'
                    }
                }).on('circle-animation-progress', function (event, progress, stepValue) {
                    $(this).find('div').text((stepValue * 100).toFixed(1) + "%");
                }).stop();


            }


        });
    }

    // Show animated elements
    animateElements();
    $(window).scroll(animateElements);


});     //end document ready function





//Summary click
$('.summaryClick').click(function () { //$('.summary').fadeToggle(); 
    $(this).find('.summary').fadeToggle();
    $(this).find('.detailed-view').fadeToggle();
});

//Near Term More click
$('.btn_Intraday').click(function () { //$('.summary').fadeToggle();       
    $(".summary").find('.Intraday_Summary').fadeToggle();
    $(".summary").find('.Intraday_detailed-view').fadeToggle();
});

//Mid Term More click
$('.btn_MidTerm').click(function () { //$('.summary').fadeToggle();       
    $(".summary").find('.MidTerm_Summary').fadeToggle();
    $(".summary").find('.MidTerm_detailed-view').fadeToggle();
});

