class Question < ActiveRecord::Base
   belongs_to :questioinable, polymorphic: true
end
