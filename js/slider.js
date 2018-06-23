function sliderSimple() {
    var sliderActive = $("#slider .sliderActive");
    var sliderNext = sliderActive.next().length ? sliderActive.next() : $("#slider li:first");

    sliderNext.addClass('sliderActive').fadeIn();
    sliderActive.removeClass('sliderActive').fadeOut();

}
setInterval(function () {
    sliderSimple();
}, 5000);
