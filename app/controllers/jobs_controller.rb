class JobsController < ApplicationController
  before_action :set_job, only: [:show]
  before_action :set_job_associated_data, only: [:jobs_by_category, :jobs_by_state_category, :show, :index]

  # GET /jobs
  # GET /jobs.json
  def index
  end
  
  def show
  end

  def jobs_by_category
    @jobs = Job.where(:job_category_id => params[:job_category_id])
    @jobs = @jobs.blank? ? [] : @jobs
  end
  
  def jobs_by_state_category
    @jobs = Job.where(:job_category_id => params[:job_category_id], :state_id => params[:state_id])
    @jobs = @jobs.blank? ? [] : @jobs
  end
  
  private

    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params[:job]
    end
end
