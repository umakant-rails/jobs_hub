class Admin::JobPostsController < ApplicationController
  before_action :set_job, only: [:new, :show, :edit, :update, :destroy]
  before_action :set_job_posts, only: [:show, :edit, :update, :destroy]
  layout 'admin'

  def new 
    @job_post = @job.job_posts.new
  end

  def create
    @job = Job.where(id: params[:job_id]).first
    @job_post = @job.job_posts.new(job_post_params)
    respond_to do |format|
      if @job_post.save
        format.html { redirect_to admin_job_path(@job), notice: 'Job Post was successfully created.' }
        format.json { render :show, status: :created, location: @job_post }
      else
        format.html { render :new }
        format.json { render json: @job_post.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def edit
  end

  def update
    respond_to do |format|
      if @job_post.update(job_post_params)
        format.html { redirect_to admin_job_path(@job), notice: 'Job Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job_post.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def job_post_params
      params.require(:job_post).permit(:post_name, :vacancies, :salary, :qualifications, :job_id) 
    end

    def set_job_posts
      @job_post = JobPost.where(id: params[:id]).first
    end

    def set_job
      @job = Job.where(id: params[:job_id]).first
    end

end
