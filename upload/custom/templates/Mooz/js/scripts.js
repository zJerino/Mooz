function fixFooter() {
    var footerHeight = $("footer").outerHeight() + "px";
    var wrapperHeight = "calc(100vh - " + footerHeight + ")";
    $("#wrapper").css({'min-height': wrapperHeight});
}
$(document).ready(fixFooter);
$(window).resize(fixFooter);

$('[data-toggle="popup"]').popup({
    inline     : true,
    hoverable  : true,
    position   : 'bottom left',
    delay: {
      show: 300,
      hide: 800
    }
  });

$(document).ready(function(){
    $(".mantenimiendoxxd").addClass('d-block').addClass('animated fadeIn slow')
});
$(document).ready(function(){
 
	$('.ir-arriba').click(function(){
		$('body, html').animate({
			scrollTop: '0px'
		}, 300);
	});
 
	$(window).scroll(function(){
		if( $(this).scrollTop() > 10 ){
			$('.ir-arriba').slideDown(1024);
		} else {
			$('.ir-arriba').slideUp(1024);
		}
	});
 
});
$(document).ready(function(){
	$(window).scroll(function(){
		if( $(this).scrollTop() > 100 ){
            $('#navbar').addClass('fixed-top');
            $('#navbar').addClass('bg-primary');
            $('#navbar').removeClass('bg-transparent');
            $('#navbar').addClass('animacion001').removeClass('animacion002');
            console.log('Ok bajando Navbar')
		} else {
            $('#navbar').removeClass('animacion001').addClass('animacion002');
            console.log('Ok Subiendo Navbar')
		}
	});
 
});
$(document).ready(function(){
	$(window).scroll(function(){
		if( $(this).scrollTop() > 30 ){
		} else {
			$('#navbar').removeClass('bg-primary').addClass('bg-transparent');
            $('#navbar').removeClass('fixed-top');
		}
	});
 
});
$(function () {
 $('[data-toggle="tooltip"]').tooltip()
    
});
$(function () {
  $('[data-toggle="popover"]').popover()
});
