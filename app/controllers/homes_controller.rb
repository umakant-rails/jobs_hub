class HomesController < ApplicationController

  def index 
    @job_categories = JobCategory.all
    @states = State.all
    @jobs = Job.where("start_date >= ?", Date.today - 30.days)
    @banking_jobs = @jobs.where(:job_category_id => 3)
    @railway_jobs = @jobs.where(:job_category_id => 4)
    @teacher_jobs = @jobs.where(:job_category_id => 6)
  end
  
end
