$(document).ready(function($) {

    $('.mask_cpf').mask('000.000.000-00');
    $('.mask_cep').mask('00000-000');
    $('.mask_numbercard').mask('0000.0000.0000.0000');

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

function validaForm() {
    $form = $("#form-produto");
	$result = true;
    // Valida Tipo de Orientação de um médico
    $selectC = true;
    $.each($form.find("input[type='radio'][name=cor]"), function(index, val) {
        if ($(this).is(':checked')) {
            $selectC = false;
        }
    });
    if ($selectC) {
        alert('É necessário selecionar uma cor');
        if ($result) {
            $form.find("input[type='radio'][name=cor]").focus();
        }
        $result = false;
        return false;
    }
    $selectT = true;
    $.each($form.find("input[type='radio'][name=tamanho]"), function(index, val) {
        if ($(this).is(':checked')) {
            $selectT = false;
        }
    });
    if ($selectT) {
        alert('É necessário selecionar um tamanho');
        if ($result) {
            $form.find("input[type='radio'][name=tamanho]").focus();
        }
        $result = false;
        return false;
    }

    if ($result) {
		$form.submit();
	}
}
