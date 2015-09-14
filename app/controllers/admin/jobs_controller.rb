class Admin::JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  layout 'admin'
    
  def index
    @jobs = Job.all
  end

  def show
  end

  def new
    @job_categories = JobCategory.all
    @states = State.all
    @job = Job.new
  end
  
   # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new
    @job.title = job_params[:title]
    @job.description = job_params[:description]
    @job.age_limit = job_params[:age_limit]
    @job.qualifications = job_params[:qualifications]
    @job.selection_procedure = job_params[:selection_procedure]
    @job.experience = job_params[:experience]
    @job.application_fee = job_params[:application_fee]
    @job.how_to_apply = job_params[:how_to_apply]
    @job.apply_online_link = job_params[:apply_online_link]
    @job.website_ads_link = job_params[:website_ads_link]
    @job.location = job_params[:location]
    @job.job_category_id = job_params[:job_category_id]
    @job.state_id = job_params[:state_id]
    @job.start_date = job_params[:start_date]
    @job.end_date = job_params[:end_date]
    @job.tentative_exam_date = job_params[:tentative_exam_date]
    
    respond_to do |format|
      if @job.save
        format.html { redirect_to new_admin_job_job_post_path(@job), notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @job_categories = JobCategory.all
    @states = State.all
  end
  
  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    debugger
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to admin_job_path(@job), notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to admin_jobs_url, notice: 'Job was successfully destroyed.' }
      format.js {}
    end
  end
  
  def create_job_posts 
    
  end
  
  private
  
  def job_params
    params[:job]
  end
  
  def set_job
    @job = Job.find(params[:id])
  end
end
