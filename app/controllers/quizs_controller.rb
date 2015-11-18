class QuizsController < ApplicationController
  layout 'current_affairs'
  before_action :set_job_associated_data, only: [:index, :show]

  def index
  end
  
  def show
  end
  

end
