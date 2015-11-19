class QuizsController < ApplicationController
  layout 'current_affairs'
  before_action :set_job_associated_data, :set_quiz_categories, only: [:index, :show]

  def index
    @quizs = Quiz.order('date desc')
  end
  
  def show
    @quiz = Quiz.where(id: params[:id]).first
    @questions  = @quiz.questions
  end

  def quiz_result
    @quiz = Quiz.where(id: params[:id]).first
    @questions  = @quiz.questions
  end

  private

  def set_quiz_categories
    @quiz_categories = QuizCategory.all
  end

end
