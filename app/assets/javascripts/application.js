//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require bootstrap
//= require_tree ./admin
//= require_tree .

var appFunction = {};
appFunction.showMessage = function(type, message){
  var htmlMessageString = '';
  if(type == 'success'){
    htmlMessageString = '<p class="alert notice alert-success"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>' + message + '</p>';
  } else if(type == 'error') {
    htmlMessageString = '<p class="alert notice alert-danger"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>' + message + '</p>';
  }
  $("#alert_msg").html(htmlMessageString);
  $('html').scrollTop(0);
}

$(document).ready(function(){
  $(".more_states").on('click', function(){
    $("#remaining_states").css({display: 'block'});
    $(this).hide();
  });

  /* Open states list on hover event when medius and large size (pc etc ) devise is used */
    $(".state-list-tab, .states-name-list, .states-name-block").hover(function(){
      if($("#fa-menubar-button").css('display') == "none"){
        $(".states-name-list").css({display: 'block'});
      }
    },function(){
      if($("#fa-menubar-button").css('display') == "none"){
        $(".states-name-list").css({display: 'none'});
      }
    });

    /* Open states list on click event when small size (pc etc ) devise is used */
    $(".state-list-tab").on('click', function(){
      var menuBarBtnStatus = $("#fa-menubar-button").css('display');
      var menuListOpenStatus = $(".states-name-list").css('display');

      if(menuBarBtnStatus == "block" && menuListOpenStatus == 'none'){
        $(".states-name-list").css({display: 'block'});
      }else if(menuBarBtnStatus == "block"){
        $(".states-name-list").css({display: 'none'});
      }
    });

  /*$(".breakhead, .breaking-news-list").hover(function(){
    $(".breaking-news-list").css({display: 'block'});
  },function(){
    $(".breaking-news-list").css({display: 'none'});
  });*/

  /*Open notification popup on click on announcment and close on mouse blur event */  
    $(".breakhead").on('click', function(){
      if($(".breakhead i").hasClass('glyphicon-plus')){
        $(".breakhead i").removeClass('glyphicon-plus');
        $(".breakhead i").addClass('glyphicon-minus');
        $(".breaking-news-list").css({display: 'block'});
      } else {
        $(".breakhead i").addClass('glyphicon-plus');
        $(".breakhead i").removeClass('glyphicon-minus');
        $(".breaking-news-list").css({display: 'none'});
      }
    });
    
    $(".breaking-news-list").hover(function(){
      $(".breakhead i").removeClass('glyphicon-plus');
      $(".breakhead i").addClass('glyphicon-minus');
      $(".breaking-news-list").css({display: 'block'});
    },function(){
      $(".breakhead i").addClass('glyphicon-plus');
      $(".breakhead i").removeClass('glyphicon-minus');
      $(".breaking-news-list").css({display: 'none'});
    });

    $(".breakhead").hover(function(){
    },function(){
      $(".breakhead i").addClass('glyphicon-plus');
      $(".breakhead i").removeClass('glyphicon-minus');
      $(".breaking-news-list").css({display: 'none'});
    });
});
