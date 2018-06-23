$(document).ready(function($) {
    $(document).on('click', '.radio-inline', function () {
        $(".radio-inline").removeClass('selected');
        // $("radio[name=tamanho]").prop("checked", false);
        $(this).addClass('selected');
        // $(this).find("radio[name=tamanho]").prop("checked", true);
        // console.log($(this).find("radio[name=tamanho]"));
    });
    $(document).on('click', '.seleciona-cor', function () {
        $cor = $(this).attr('data-cor');
        $(".seleciona-cor").removeClass("preto-selecionado");
        $(".seleciona-cor").removeClass("rosa-selecionado");
        $(".seleciona-cor").removeClass("verde-selecionado");
        $(".seleciona-cor").removeClass("azul-selecionado");
        $(this).addClass($cor+"-selecionado");
    });    
});


function sliderSimple() {
    var sliderActive = $("#slider .sliderActive");
    var sliderNext = sliderActive.next().length ? sliderActive.next() : $("#slider li:first");

    sliderNext.addClass('sliderActive').fadeIn();
    sliderActive.removeClass('sliderActive').fadeOut();

}
setInterval(function () {
    sliderSimple();
}, 5000);
