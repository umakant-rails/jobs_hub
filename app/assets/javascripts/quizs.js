var quizFunctions = function() {
  var markAnsweredQuestion = function(self){
    var $quesBodyDiv = $(self).closest('.quiz-question-body');
    $($quesBodyDiv).removeClass('unanswered-quiz-question');
    $($quesBodyDiv).addClass('answered-quiz-question');
  };
  var isQuizHaveToSubmit = function(){
    var totalNumberOfQuestion = $(".quiz-question-body").length;
    var totalNumberAnsweredQuestion = $(".ques-option:checked").length;
    if (totalNumberOfQuestion == totalNumberAnsweredQuestion){
      return true
    } else if(totalNumberOfQuestion/2.0 >=  totalNumberAnsweredQuestion){
      appFunction.showMessage('error', 'Half of questions of a quiz must be answered.');
      return false
    } else {
      return confirm('Total number of answered questions =  ' + totalNumberAnsweredQuestion + '.\nAre you sure you want to submit the Quiz now?');
    }
  };
  var submitQuiz = function(self){
    if(isQuizHaveToSubmit()){
      var dataHref = $(self).data('href');
      $.ajax({
        url: dataHref,
        type:"post",
        dataType: 'script',
        success: function (html) {
        }
      });
    }
  };

  var showWorkPlace = function(questionID){
    var width = $("#quiz-question-" + questionID).width();
    var height = $("#quiz-question-" + questionID).height();
    var txtAreaStyle = {height: height, 'max-height': height, 'max-width': '91.6667%'};
    $("#workplace-textarea-" + questionID).css(txtAreaStyle);
    $("#workplace-textarea-" + questionID).show( "blind", {direction: "horizontal"}, 400 );
  };
  var hideWorkPlace = function(questionID){
     $("#workplace-textarea-" + questionID).hide();
  };
  var showAnswer = function(questionID){
    var width = $("#quiz-question-" + questionID).width();
    var height = $("#quiz-question-" + questionID).height();
    var txtAreaStyle = {height: height, 'max-height': height, 'max-width': '91.6667%'};
    $("#quiz-question-expalnation-" + questionID).css(txtAreaStyle);
    $("#quiz-question-expalnation-" + questionID).show( "blind", {direction: "horizontal"}, 400 );
  };
  var hideAnswer = function(questionID){
    $("#quiz-question-expalnation-" + questionID).hide();
  };
  var showQuizQuestion = function(questionID){
    $("#quiz-question-" + questionID).show( "blind", {direction: "horizontal"}, 400 );
  };
  var hideQuizQuestion = function(questionID){
    $("#quiz-question-" + questionID).hide();
  };
  var showLeftSideAngle = function(questionID){
    $("#workplace-angle-" + questionID).removeClass('fa-angle-double-right');
    $("#workplace-angle-" + questionID).addClass('fa-angle-double-left');
  };
  var showRightSideAngle = function(questionID){
    $("#workplace-angle-" + questionID).removeClass('fa-angle-double-left');
    $("#workplace-angle-" + questionID).addClass('fa-angle-double-right');
  };

  var resetQuiz = function(){
    $(".workplace-textarea").hide();
    $('.quiz-question-body').each(function(){
      $(this).removeClass();
      $(this).addClass('row quiz-question-body unanswered-quiz-question');
      $(this).find('.ques-option:checked').prop('checked',false);
      $(this).find('.fa-check').removeClass();
      $(this).find('.fa-times').removeClass();
      $(".workplace-text").html('Working  Place');
      location.hash = '';
    });
  };

  var closeOpenWorkPlaceOrAnswer = function(questionID, isTextarea){
    $(".quiz-question-body").not('#quiz-question-body-' + questionID ).each(function(){
      var $element =  isTextarea ? $(this).find('.workplace-textarea') : $(this).find('.quiz-question-expalnation');
      var $quizQuestion =  $(this).find('.quiz-question');
      var $workplaceAngle = $(this).find('.workplace-angle');
      var displayStatus = $element.css('display');
      if(displayStatus == 'block'){
        $element.hide();
        $quizQuestion.show( "blind", {direction: "horizontal"}, 400 )
        $workplaceAngle.removeClass('fa-angle-double-right');
        $workplaceAngle.addClass('fa-angle-double-left');
      }
    });
  };
  var toggleWorkPlaceAndAnswer = function(questionID, workplaceBtnText, isLeftAngle){
    if(workplaceBtnText == "Working Place" && isLeftAngle){
      closeOpenWorkPlaceOrAnswer(questionID, true);
      showWorkPlace(questionID);
      hideQuizQuestion(questionID);
      showRightSideAngle(questionID);
    } else if(workplaceBtnText == "Working Place" && !isLeftAngle){
      showQuizQuestion(questionID);
      hideWorkPlace(questionID);
      showLeftSideAngle(questionID);
    } else if(workplaceBtnText == "Answer" && isLeftAngle){
      closeOpenWorkPlaceOrAnswer(questionID, false);
      showAnswer(questionID);
      hideQuizQuestion(questionID);
      showRightSideAngle(questionID);
    } else if(workplaceBtnText == "Answer" && !isLeftAngle){
      hideAnswer(questionID);
      showQuizQuestion(questionID);
      showLeftSideAngle(questionID);
    }
  };
  var getQuizByDate = function(date){
    window.location = '/quizs/quizs_by_date/' + date;
  };

  return {
    markAnsweredQuestion: function(self){ markAnsweredQuestion(self); },
    isQuizHaveToSubmit: function(){ isQuizHaveToSubmit(); },
    submitQuiz: function(self){submitQuiz(self); },

    showWorkPlace: function(questionID){ showWorkPlace(questionID); },
    hideWorkPlace: function(questionID){ hideWorkPlace(questionID); },
    showAnswer: function(questionID){ showAnswer(questionID); },
    hideAnswer: function(questionID){ hideAnswer(questionID); },
    showQuizQuestion: function(questionID){ showQuizQuestion(questionID); },
    hideQuizQuestion: function(questionID){ hideQuizQuestion(questionID); },
    showLeftSideAngle: function(questionID){ showLeftSideAngle(questionID); },
    showRightSideAngle: function(questionID){ showRightSideAngle(questionID); },
    resetQuiz: function(){ resetQuiz(); },
    closeOpenWorkPlaceOrAnswer: function(questionID, isTextarea){
      closeOpenWorkPlaceOrAnswer(questionID, isTextarea);
    },
    toggleWorkPlaceAndAnswer: function(questionID, workplaceBtnText, isLeftAngle) {
      toggleWorkPlaceAndAnswer(questionID, workplaceBtnText, isLeftAngle);
    },
    getQuizByDate: function(date){ getQuizByDate(date); }
  };
}();

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

  $(".workplace-action").on('click', function(){
    var questionID = $(this).data('question_id');
    var workplaceBtnText = $(this).find('.workplace-text').text().trim();
    var isLeftAngle = $(this).find('.workplace-angle').hasClass('fa-angle-double-left');
    quizFunctions.toggleWorkPlaceAndAnswer(questionID, workplaceBtnText, isLeftAngle);
  });

  $("#quiz-date-input").on('change', function(){
    var date = $("#quiz-date-input").val();
    if(date.length != 0){ quizFunctions.getQuizByDate(date); }
  });

  $('html').click(function(e) {
    if(
      !$(e.target).hasClass('workplace-textarea')
      && !$(e.target).hasClass('workplace-angle')
      && !$(e.target).hasClass('workplace-text')
      && !$(e.target).hasClass('workplace-action')
    ){
      var $quizQuestion = $(".quiz-question:hidden");
      var questionID = $($quizQuestion).data('question_id');
      var angleText = $("#workplace-angle-"+questionID).parent().text().trim();

      if(angleText == "Working Place"){
        quizFunctions.hideWorkPlace(questionID);
      } else {
        quizFunctions.hideAnswer(questionID);
      }
      quizFunctions.showQuizQuestion(questionID);
      quizFunctions.showLeftSideAngle(questionID);
    }
  });
});
