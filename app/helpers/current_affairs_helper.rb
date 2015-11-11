module CurrentAffairsHelper

  def daily_update_title
    title = ""
    date = params[:daily_update][:date].to_date if params[:daily_update] && params[:daily_update][:date].present?
    date = Time.now if date.blank?
    if @daily_update.blank? || @daily_update.title.blank?
      title = date.strftime("%d") + " " + date.strftime("%B") + " News Updates"
    else
      title = @daily_update.title
    end
    return title
  end

  def weekly_update_title
    @start_date.strftime("%d") + "-" + @end_date.strftime("%d") + " " + @start_date.strftime("%b") + " Weekly News Updates"
  end

end
