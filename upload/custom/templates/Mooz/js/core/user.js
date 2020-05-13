
$(document).ready(function(){
    $("body.d-none").addClass('d-block').removeClass('d-none').addClass('animated fadeIn');
});

    function mostrarclave(){
      var tipo = document.getElementById("password");
      if(tipo.type == "password"){
          tipo.type = "text";
      }else{
          tipo.type = "password";
      }
  }
