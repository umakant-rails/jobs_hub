class DailyUpdate < ActiveRecord::Base
  has_many  :comments, :as => :commentable, :class_name => "CurrentAffair"
  has_many  :current_affairs
end
