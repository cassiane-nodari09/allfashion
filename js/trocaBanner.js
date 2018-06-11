var banners = ["img/destaque-home-1.png", "img/destaque-home-2.png", "img/destaque-home-3.png", "img/destaque-home-4.png", "img/destaque-home-5.png"];

var bannerAtual = 0;

function trocaBanner(){
	bannerAtual = (bannerAtual + 1) % 2;
	document.querySelector('.destaque img').src = banners[bannerAtual];
}

setInterval(trocaBanner,4000);