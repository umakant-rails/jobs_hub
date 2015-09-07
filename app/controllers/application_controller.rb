class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_job_associated_data
    @job_categories = JobCategory.all
    @states = State.all
    @jobs = Job.where("start_date >= ?", Date.today - 30.days)
    @banking_jobs = @jobs.where(:job_category_id => 3)
    @railway_jobs = @jobs.where(:job_category_id => 4)
    @teacher_jobs = @jobs.where(:job_category_id => 6)

    @ft_announcements = Announcement.where("announcement_type_id in (?) and date > ?", [1,2,3], Date.today).select("announcement_type_id, count(*) as count").group("announcement_type_id")  
    @pst_announcements = Announcement.where("announcement_type_id in (?) and date between ? and ?", [4], Date.today - 7.days, Date.today).select("announcement_type_id, count(*) as count").group("announcement_type_id").first
  end

end
