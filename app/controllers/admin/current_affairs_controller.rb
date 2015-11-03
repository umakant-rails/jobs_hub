class Admin::CurrentAffairsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_affair, only: [:show, :edit, :update, :destroy]
  layout 'admin'

  def index
    @current_affair_types = CurrentAffairCategory.all
    @current_affairs = CurrentAffair.joins(:current_affair_category).where("date between ? and ?" , Date.today.beginning_of_month, Date.today.end_of_month)
  end

  def new
    @current_affair_types = CurrentAffairCategory.all
    @current_affair = CurrentAffair.new
  end

  def create
    @daily_update = DailyUpdate.new(daily_update_params)
    @current_affair = @daily_update.current_affairs.new(current_affair_params) if @daily_update.save
    @message = ""
    @message_type = ""
    respond_to do |format|
      if @current_affair.save
        @message_type = 'success'
        @message = 'Current Affair is Successfully created';
        format.html { redirect_to new_admin_current_affair_path(@current_affair), notice: @message }
        format.js {}
        format.json { render :show, status: :created, location: @current_affair }
      else
        @message_type = 'error'
        @message = 'Your action create Current Affair is failed'
        format.html { redirect_to new_admin_current_affair_path(@current_affair), notice: @message }
        format.js {}
      end
    end
  end
  
  def show
  end

  def edit
    @current_affair_types = CurrentAffairCategory.all
  end

  def update
    respond_to do |format|
      if @current_affair.update(current_affair_params)
        format.html { redirect_to admin_current_affair_path(@current_affair), notice: 'Current Affair was successfully updated.' }
        format.json { render :show, status: :ok, location: @current_affair }
      else
        format.html { render :edit }
        format.json { render json: @current_affair.errors, status: :unprocessable_entity }
      end
    end
  end

  def filter_current_affair
    @current_affairs = CurrentAffair.filter_current_affair(params[:category_id], params[:date], params[:month], params[:year])

    respond_to do |format|
      format.html{}
      format.js{}
    end

  end

  def destroy
    @current_affairs = CurrentAffair.filter_current_affair(params[:category_id], params[:date], params[:month], params[:year])
    respond_to do |format|
      if @current_affair.destroy
        @msg = "Successfully delete current affairs news."
        format.js{}
      else
        @msg = "Your action delete current affairs news is failed"
        format.js{}
      end
    end
  end

  private
  
    def current_affair_params
      params.require(:current_affair).permit(:description, :date, :current_affair_category_id)
    end

    def daily_update_params
      params.require(:daily_update).permit(:date, :title)
    end

    def set_current_affair
      @current_affair = CurrentAffair.where(:id => params[:id]).first
    end

end
