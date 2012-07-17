// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


var theInt = null;
var $crosslink, $navthumb;
var curclicked = 0;

theInterval = function(cur){
	clearInterval(theInt);

	if( typeof cur != 'undefined' )
		curclicked = cur;

	$crosslink.removeClass("active-thumb");
	$navthumb.eq(curclicked).parent().addClass("active-thumb");
	$(".stripNav ul li a").eq(curclicked).trigger('click');

	theInt = setInterval(function(){
		$crosslink.removeClass("active-thumb");



		$navthumb.eq(curclicked).parent().addClass("active-thumb");



		$(".stripNav ul li a").eq(curclicked).trigger('click');



		curclicked++;



		if( 7 == curclicked )



			curclicked = 0;



		



	}, 3000);



};







$(function(){



	



	$("#main-photo-slider").codaSlider();



	



	$navthumb = $(".nav-thumb");



	$crosslink = $(".cross-link");



	



	$navthumb



	.click(function() {



		var $this = $(this);



		theInterval($this.parent().attr('href').slice(1) - 1);



		return false;



	});



	



	theInterval();



});
