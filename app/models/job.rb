class Job < ActiveRecord::Base

  validates :title, presence: true
  validates :description, presence: true
  validates :age_limit, presence: true
  validates :job_category_id, presence: true
  validates :how_to_apply, presence: true
  validates :website_ads_link, presence: true
  validates :end_date, presence: true

  has_many :job_posts

end
