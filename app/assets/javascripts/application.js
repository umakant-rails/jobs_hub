//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require bootstrap
//= require_tree ./admin
//= require_tree .

$(document).ready(function(){
  $(".more_states").on('click', function(){
    $("#remaining_states").css({display: 'block'});
    $(this).hide();
  });
});
