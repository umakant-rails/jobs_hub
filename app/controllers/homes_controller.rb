class HomesController < ApplicationController

  def index 
    @job_types = JobType.all
    @states = State.all
  end
  
end
