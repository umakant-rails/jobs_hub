class CurrentAffairsController < ApplicationController
  before_action :set_job_associated_data, only: [:index]
  
  def index
    @current_affairs = CurrentAffair.where(date: Date.today - 3.day)
  end
  
end
