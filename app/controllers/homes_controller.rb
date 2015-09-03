class HomesController < ApplicationController

  def index 
    @job_types = JobType.all
    @states = State.all
    @jobs = Job.where("start_date >= ?", Date.today);
  end
  
end
