class CurrentAffairsController < ApplicationController
  before_action :set_job_associated_data, only: [:index]
  respond_to :js, :html
  def index
    @current_affairs = CurrentAffair.joins(:daily_update).where("daily_updates.date = ?", Date.today)
    @daily_update = DailyUpdate.where(date: Date.today).first
    @daily_update_comments = @daily_update.comments.order('id desc') if @daily_update.present?
    #~ respond_to do |format|
      #~ format.html{}
      #~ format.js{}
    #~ end
  end
  
  def create_daily_update_comment
    @daily_update = DailyUpdate.where(id: params[:comment][:daily_update_id]).first
    params[:comment][:user_id] = current_user.id
    @daily_update.comments.create(comment_params)
    @daily_update_comments = @daily_update.comments.order('id desc')
    #~ respond_to do |format|
      #~ format.html{}
      #~ format.js{}
    #~ end
  end

  def get_daily_updates
    @daily_update = DailyUpdate.where(date: params[:daily_update][:date].to_date).first
    @current_affairs = @daily_update.present? ?  @daily_update.current_affairs : []
    @daily_update_comments = @daily_update.present? ? @daily_update.comments.order('id desc') : []
  end

  private

   def comment_params
    params.require(:comment).permit(:text, :user_id)
   end

end
