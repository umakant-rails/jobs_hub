class QuizsController < ApplicationController
  layout 'current_affairs'
  before_action :set_job_associated_data, :set_quiz_categories, only: [:index, :show, :quizs_by_category, :quizs_by_date]

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

  def quizs_by_category
    @quiz_category = set_quiz_category(params[:category_id])
    @quizs = @quiz_category.quizs
  end

  def quizs_by_date
    @quizs = Quiz.where(date: params[:date].to_date).order('date desc')
  end

  private

  def set_quiz_categories
    @quiz_categories = QuizCategory.all
  end

  def set_quiz_category(category_id)
    QuizCategory.where(id: category_id).first
  end

end
