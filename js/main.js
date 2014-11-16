window.onscroll = function () {
	navbarShadow(window.pageYOffset);
};

var navbarShadow = function (windowYOffset) {
	var mainNav = document.getElementById('main-nav');
	if(windowYOffset > 0) {
		mainNav.classList.add('nav-shadow');
	}
	else {
		mainNav.classList.remove('nav-shadow');
	}
};