class ChartAndPoliciesController < ApplicationController
  layout 'current_affairs'
  before_action :set_job_associated_data, only: [:rbi_chart, :cabinet_secreteries]
  
  def rbi_chart
    @current_affairs = CurrentAffair.joins(:current_affair_category).where(current_affair_category_id: 8)
  end
  
  def cabinet_secreteries
  end
  
end
