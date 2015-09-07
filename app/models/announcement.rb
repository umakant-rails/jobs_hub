class Announcement < ActiveRecord::Base
  TITLE_NAMES = {
    "1": "Upcoming Notifications",
    "2": "Admit Card / Call Letter",
    "3": "Inteviewer / Exam Date Reminder",
    "4": "Interview/Exam Results"
  }
end
