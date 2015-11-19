class Quiz < ActiveRecord::Base
  has_many  :questions, :as => :questioinable, :class_name => "Question"
end
