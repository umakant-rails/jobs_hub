$(document).ready(function(){
  $("#create_crt_affr").on('click', function(){
    var crtAffrDate = $("#current_affair_date").val();
    var crtAffrType = $("#current_affair_current_affair_category_id").val();
    var crtAffrDesc = $("#current_affair_description").val();
    var attrs = {
        current_affair: {
        date:crtAffrDate,
        current_affair_category_id: crtAffrType,
        description: crtAffrDesc
      }
    }
    if(attrs.current_affair.date.length == 0){
      appFunction.showMessage('error', 'Date is mandatory filed');
    } else if(attrs.current_affair.current_affair_category_id.length == 0){
      appFunction.showMessage('error', 'Current affair type is mandatory filed')
    } else if(attrs.current_affair.description.length == 0){
      appFunction.showMessage('error', 'Description is mandatory filed')
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
  });
});
