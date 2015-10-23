class Admin::AnnouncementsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_announcement, only: [:show, :edit, :update, :destroy]
  
  layout 'admin'
  
  def index 
    @announcements = Announcement.all
  end
  
  def new
    @announcement = Announcement.new
  end
  
  def show
  end
  
  def create
    @announcement = Announcement.new(announcement_params)
    respond_to do |format|
      if @announcement.save
        format.html { redirect_to admin_announcements_path(@announcement), notice: 'Announcement was successfully created.' }
        format.json { render :show, status: :created, location: @job_post }
      else
        format.html { render :new }
        format.json { render json: @announcement.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @announcement.update(announcement_params)
        format.html { redirect_to admin_announcement_path(@announcement), notice: 'Announcement was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  private 

    def set_announcement
      @announcement = Announcement.where(id: params[:id]).first
    end

    def announcement_params
      params.require(:announcement).permit(:job_name, :description, :announcement_type_id, :website_link, :date) 
    end
end
