$(document).ready(function(){
  var createCurrentAffair = function(attrs){
    if(attrs.current_affair.date.length == 0){
      appFunction.showMessage('error', 'Date is mandatory field');
    } else if(attrs.current_affair.current_affair_category_id.length == 0){
      appFunction.showMessage('error', 'Current affair type is mandatory field')
    } else if(attrs.current_affair.description.length == 0){
      appFunction.showMessage('error', 'Description is mandatory field')
    } else {
      $(".loader_image").show();
      $.ajax({
        url:"/admin/current_affairs",
        type:"POST",
        dataType: 'script',
        data: attrs,
        success: function (html) {          
        }
      });
    }
  };

  var filterCurrentAffairNews = function(isTimingFieldSelected, params){
    $(".loader_image").show();
    $("#crt_affr_list_block").hide();
    $.ajax({
      url:"/admin/current_affairs/filter_current_affair",
      type:"POST",
      dataType: 'script',
      data: params,
      success: function (html) {
      }
    });
  }

  /*Filter to Current affair news*/
  $("#filter_current_affair").on('click', function(){
    var params = {};
    var isTimingFieldSelected = false;
    $(".selected-crt-affr-filter").find('select, input').each(function(){
      isTimingFieldSelected = true;
      params[$(this).attr('name')] = $(this).val();
    });
    params['category_id'] = $("#current_affair_category_id").val();
    filterCurrentAffairNews(isTimingFieldSelected, params);
  });

  /*Create current affair on click of button*/
  $("#create_crt_affr").on('click', function(){
    var crtAffrDate = $("#current_affair_date").val();
    var crtAffrType = $("#current_affair_current_affair_category_id").val();
    var crtAffrDesc = $("#current_affair_description").val();
    var attrs = {
        current_affair: {
        date:crtAffrDate,
        current_affair_category_id: crtAffrType,
        description: crtAffrDesc
      }, daily_update: {
        date: crtAffrDate
      }
    }
    createCurrentAffair(attrs);
  });

  /*Select any filter and display selected alternate filter*/
  $("#year, #month, #date-span").on('click change', function(){
    if($(".selected-crt-affr-filter").length >= 1){
      $(".selected-crt-affr-filter").removeClass('selected-crt-affr-filter');
    }
    $(this).closest(".filter-input-boxes").addClass('selected-crt-affr-filter');
  });

});
