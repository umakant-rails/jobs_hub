class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_job_associated_data
    @job_categories = JobCategory.where("name not in (?)", "Others")
    @states = State.all
    @jobs = Job.joins(:job_posts).where("start_date >= ?", Date.today - 30.days)
    @banking_jobs = @jobs.where(:job_category_id => 3)
    @railway_jobs = @jobs.where(:job_category_id => 4)
    @teacher_jobs = @jobs.where(:job_category_id => 6)

    @ft_announcements = Announcement.where("announcement_type_id in (?) and date > ?", [1,2,3], Date.today).select("announcement_type_id, count(*) as count").group("announcement_type_id")  
    @pst_announcements = Announcement.where("announcement_type_id in (?) and (date >= ? and date <= ?)", [4], Date.today - 7.days, Date.today).select("announcement_type_id, count(*) as count").group("announcement_type_id").first
  end
  
  private

  def after_sign_in_path_for(resource)
    if resource.present?
      session['user_return_to'] = admin_dashboards_path
    else
      request.referer || root_path
    end
  end

  def after_sign_out_path_for(resource)
    session['user_return_to'] = new_user_session_path
  end

  def after_sign_up_path_for(resource)
    debugger
    session['user_return_to'] = new_user_session_path
  end

end
