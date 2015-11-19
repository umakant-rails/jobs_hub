var quizFunctions = {
  markAnsweredQuestion: function(self){
    var $quesBodyDiv = $(self).closest('.quiz-question-body');
    $($quesBodyDiv).removeClass('unanswered-quiz-question');
    $($quesBodyDiv).addClass('answered-quiz-question');
  },
  isAnsweredAllQuestion: function(){
    var totalNumberOfQuestion = $(".quiz-question-body").length;
    var totalNumberAnsweredQuestion = $(".ques-option:checked").length;
    return (totalNumberOfQuestion == totalNumberAnsweredQuestion);
  },
  submitQuiz: function(self){
    if(quizFunctions.isAnsweredAllQuestion()){
      var dataHref = $(self).data('href');
      $.ajax({
        url: dataHref,
        type:"post",
        dataType: 'script',
        success: function (html) {
        }
      });
    }else{
      appFunction.showMessage('error', 'Please answer to all questions before submit a quiz.');
    }
  },
  resetQuiz: function(){
    $('.quiz-question-body').each(function(){
      $(this).removeClass();
      $(this).addClass('quiz-question-body unanswered-quiz-question');
      $(this).find('.ques-option:checked').prop('checked',false);
    });
  }
}
$(document).ready(function(){
  $(".ques-option").on('click', function(){
    quizFunctions.markAnsweredQuestion(this);
  });
  
  $('#reset-quiz').on('click', function(){
    quizFunctions.resetQuiz(this);
  });
  $('#submit-quiz').on('click', function(){
    quizFunctions.submitQuiz(this);
  });
});
