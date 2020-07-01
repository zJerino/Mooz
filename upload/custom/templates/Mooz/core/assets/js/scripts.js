
function fixFooter(){
    var o="calc(100vh - "+($(".footer").outerHeight()+"px")+")";$("#wrapper").css({"min-height":o})}
    $(document).ready(fixFooter),$(window).resize(fixFooter),
$('[data-toggle="popup"]').popup({inline:!0,hoverable:!0,position:"bottom left",
    transition: 'slide down',delay:{show:300,hide:800}}),
$('[data-toggle="popup2"]').popup({
    inline:!0,
    hoverable:!0,
    on: 'click',
    transition: 'slide down',
    position:"bottom left"
}),
$(document).ready(function(){$(".mantenimiendoxxd").addClass("d-block").addClass("animated fadeIn slow")}),$(document).ready(function(){$(".ir-arriba").click(function(){$("body, html").animate({scrollTop:"0px"},300)}),$(window).scroll(function(){$(this).scrollTop()>10?$(".ir-arriba").slideDown(1024):$(".ir-arriba").slideUp(1024)})}),$(document).ready(function(){$(window).scroll(function(){$(this).scrollTop()>100?($("#navbar").addClass("fixed-top"),$("#navbar").addClass("bg-primary"),$("#navbar").removeClass("bg-transparent"),$("#navbar").addClass("animacion001").removeClass("animacion002")):($("#navbar").removeClass("animacion001").addClass("animacion002"))})}),$(document).ready(function(){$(window).scroll(function(){$(this).scrollTop()>30||($("#navbar").removeClass("bg-primary").addClass("bg-transparent"),$("#navbar").removeClass("fixed-top"))})}),$(function(){$('[data-toggle="tooltip"]').tooltip()}),$(function(){$('[data-toggle="popover"]').popover()});