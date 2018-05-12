
var banners = ["img/destaque-home-1.png", "img/destaque-home-2.png", "img/destaque-home-3.png", "img/destaque-home-4.png", "img/destaque-home-5.png"];
var bannerAtual = 0;

function trocaBanner() {
    bannerAtual = (bannerAtual + 1) % 5;
    document.querySelector('.destaque img').src = banners[bannerAtual];
}

var timer = setInterval(trocaBanner, 4000);
    var controle = document.querySelector('.pause');

    controle.onclick = function() {
        if (controle.className == 'pause') {
            clearInterval(timer);
            controle.className = 'play';
        } else {
            timer = setInterval(trocaBanner, 4000);
            controle.className = 'pause';
        }

        return false;
    };

$('.novidades').addClass('painel-compacto');