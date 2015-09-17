$(document).ready(function(){
  $(".delete_job").on("click", function(){
    var job_id = $(this).data('job_id');
    var is_confirm = confirm('Are you sure');
    if(is_confirm){
      $.ajax({
        url: "/admin/jobs/" + job_id,
        type: 'delete',
        dataType: "script",
        data: {},
        success: function() {
        }
      });
    }
  });
});

