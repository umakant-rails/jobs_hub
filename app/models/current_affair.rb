class CurrentAffair < ActiveRecord::Base

  belongs_to :current_affair_category
  belongs_to :daily_update

  MONTHS = {
    '1': 'January',
    '2': 'Febuary',
    '3': 'March',
    '4': 'Aprail',
    '5': 'May',
    '6': 'June',
    '7': 'July',
    '8': 'August',
    '9': 'September',
    '10': 'October',
    '11': 'November',
    '12': 'December',
  }

  def self.filter_current_affair(category_id, date, month, year)
    category_filter = ''
    if category_id.present?
      category_filter = "current_affair_category_id = #{params[:category_id]} and "
    end
    if date.present?
      @current_affairs = CurrentAffair.joins(:current_affair_category).where(category_filter + "date = ?", date.to_date )
    elsif year.present? && month.present?
      @current_affairs = CurrentAffair.joins(:current_affair_category).where(category_filter + "year(date) = ? and month(date) = ?", year, month)
    else
      @current_affairs = CurrentAffair.joins(:current_affair_category).where( category_filter + "year(date) = ? and month(date) = ?", Date.today.year, Date.today.month)
    end
  end

end
