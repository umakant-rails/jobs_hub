//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery-ui
//= require bootstrap
//= require general
//= require_tree .

$(document).ready(function(){
  $(".more_states").on('click', function(){
    $("#remaining_states").css({display: 'block'});
    $(this).hide();
  });
});
