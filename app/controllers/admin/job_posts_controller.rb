class Admin::JobPostsController < ApplicationController
  before_action :set_job, only: [:new, :show, :edit, :update, :destroy]
  layout 'admin'
  
  def new 
    @job_post = @job.job_posts.new
  end
  
  private
  
  def set_job
    @job = Job.where(id: params[:job_id]).first
  end
  
end
