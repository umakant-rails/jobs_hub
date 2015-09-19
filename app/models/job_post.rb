class JobPost < ActiveRecord::Base

  validates :post_name, presence: true
  validates :vacancies, presence: true
  validates :qualifications, presence: true
  validates :job_id, presence: true

  belongs_to :job

end
