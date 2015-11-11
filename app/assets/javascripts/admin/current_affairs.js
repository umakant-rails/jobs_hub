var currentAffair = {
  deleteCurrentAffairNews: function(dataHref, params ){
    $.ajax({
      url: dataHref,
      type:"DELETE",
      dataType: 'script',
      data: params,
      success: function (html) {
      }
    });
  },
  createCurrentAffair: function(attrs){
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
  },
  filterCurrentAffairNews: function (params){
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
  },
  createComment: function(params){
    if(params.comment.text.length > 0){
      $.ajax({
        url:"/current_affairs/create_daily_update_comment",
        type:"POST",
        dataType: 'script',
        data: params,
        success: function (html) {
        }
      });
    } else {
      //appFunction.showMessage('error', 'Comment value can not be empty.');
      alert('Comment value can not be empty.');
    }
  },
  deleteCurrentAffairNews: function(dataHref, params ){
   var isConfirm = confirm('Are you sure?');
   if(isConfirm){
      $.ajax({
        url: dataHref,
        type:"DELETE",
        dataType: 'script',
        data: params,
        success: function (html) {
        }
      });
    }
  },
  getDailyUpdate: function(dataUrl, params){
    $.ajax({
      url: dataUrl,
      type:"GET",
      dataType: 'script',
      data: params,
      success: function (html) {
      }
    });
  }
};

$(document).ready(function(){

  /*Filter to Current affair news*/
  $("#filter_current_affair").on('click', function(){
    var params = {};
    $(".selected-crt-affr-filter").find('select, input').each(function(){
      params[$(this).attr('name')] = $(this).val();
    });
    params['category_id'] = $("#current_affair_category_id").val();
    currentAffair.filterCurrentAffairNews(params);
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
    currentAffair.createCurrentAffair(attrs);
  });

  /*Select any filter and display selected alternate filter*/
  $("#year, #month, #date-span").on('click change', function(){
    if($(".selected-crt-affr-filter").length >= 1){
      $(".selected-crt-affr-filter").removeClass('selected-crt-affr-filter');
    }
    $(this).closest(".filter-input-boxes").addClass('selected-crt-affr-filter');
  });

  /*Delete current affairs news */
  $(document.body).on('click', '.delete_current_affair_news' ,function(){
    var params = {};
    $(".selected-crt-affr-filter").find('select, input').each(function(){
      params[$(this).attr('name')] = $(this).val();
    });
    params['category_id'] = $("#current_affair_category_id").val();
    var dataHref = $(this).data('href');
    currentAffair.deleteCurrentAffairNews(dataHref, params);
  });

  /*Create comment for daily updates */
  $(document.body).on('keyup', '#daily-update-comment-box', function(event){
    var crtAffrListDiv = $(".crt-affr-bullets");
    if(crtAffrListDiv.length !== 0){
      var comment = $("#daily-update-comment-box").val();
      var daily_update_id = $("#daily_update_id").val();
      var params = {
        comment: {
          text: comment,
          daily_update_id: daily_update_id
        }
      }
      if(event.which === 13 ){ 
        currentAffair.createComment(params);
      }
    } else {
      appFunction.showMessage('error', 'News updates must be for comments');
    }
  });

  /*get Daily updates */
  $(document.body).on('click', '#daily-update-date-span', function(event){
    var date = $('.custom-datetime input').val();
    var dataUrl = $(this).data('url');
    var hdrText = $(".crt-affr-hdr-txt").text().trim();
    var params = {
      daily_update: {
        date: date,
      }
    }
    if(params.daily_update.date.length !== 0) {
      if(hdrText.indexOf('Weekly') == -1){
        currentAffair.getDailyUpdate(dataUrl, params)
      } else {
        window.location = '/current_affairs/get_weekly_updates' + "?date=" + date ;
      }
    } else {
      alert('Date is mandatory filed to fetch daily updates');
    }
  });
});
