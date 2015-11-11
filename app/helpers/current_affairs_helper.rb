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

  def monthly_update_title
    @start_date.strftime("%B") + "-" + @end_date.strftime("%Y") + " Monthly News Updates"
  end

  def get_crt_affr_months_list
    time = Time.now
    year = time.year
    months_date = []
    time.month.times.each do | index |
      months_date << time
      time = time.prev_month
    end
    return months_date
  end

  def get_crt_affr_month_title(date)
    date = date.to_date
    date.strftime('%B') + " " + date.strftime("%Y") + " Updates"
  end

end
