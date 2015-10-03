class Announcement < ActiveRecord::Base

  validates :job_name, presence: true
  validates :announcement_type_id, presence: true
  validates :website_link, presence: true
  validates :date, presence: true

  TITLE_NAMES = {
    "1": "Upcoming Notifications",
    "2": "Admit Card / Call Letter",
    "3": "Inteview / Exam Date Reminder",
    "4": "Interview/Exam Results"
  }
end
