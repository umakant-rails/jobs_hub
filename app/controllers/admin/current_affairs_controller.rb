class Admin::CurrentAffairsController < ApplicationController
  layout 'admin'
  
  def new
    @current_affair_types = CurrentAffairCategory.all
    @current_affair = CurrentAffair.new
  end
  
  def create
    @current_affair = CurrentAffair.new(current_affair_params)
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
  
  private
  
    def current_affair_params
      params.require(:current_affair).permit(:description, :date, :current_affair_category_id)
    end
  
end
