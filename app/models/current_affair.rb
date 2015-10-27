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

end
