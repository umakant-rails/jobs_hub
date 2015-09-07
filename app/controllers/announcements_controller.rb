class AnnouncementsController < ApplicationController
  before_action :set_job_associated_data, only: [:get_annoucements]
  
  def get_annoucements
    @announcements = Announcement.where(:announcement_type_id => params[:announcement_type_id].to_i)
  end

end
