class CurrentAffairsController < ApplicationController
  before_action :set_job_associated_data, only: [:index]
  
  def index
    @current_affairs = CurrentAffair.joins(:daily_update).where("daily_updates.date = ?", Date.today)
  end
  
end
