class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  before_action :set_job_associated_data, only: [:jobs_by_category, :jobs_by_state_category, :show]
  # GET /jobs
  # GET /jobs.json
  def index
    @job_categories = JobCategory.all
    @states = State.all
    @jobs = Job.where("start_date >= ?", Date.today - 30.days)
    @banking_jobs = @jobs.where(:job_category_id => 3)
    @railway_jobs = @jobs.where(:job_category_id => 4)
    @teacher_jobs = @jobs.where(:job_category_id => 6)
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
    @job = Job.where(:id => params[:id]).first
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
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
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
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
    # Use callbacks to share common setup or constraints between actions.
    def set_job_associated_data
      @jobs = Job.where("start_date >= ?", Date.today - 30.days)
      @banking_jobs = @jobs.where(:job_category_id => 3)
      @railway_jobs = @jobs.where(:job_category_id => 4)
      @teacher_jobs = @jobs.where(:job_category_id => 6)
      #@banking_jobs = Job.where(:job_category_id => 3)
      #@railway_jobs = Job.where(:job_category_id => 4)
      #@teacher_jobs = Job.where(:job_category_id => 6)
      @job_categories = JobCategory.all
      @states = State.all
    end
    
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params[:job]
    end
end
