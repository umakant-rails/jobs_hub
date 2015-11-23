class ChartAndPoliciesController < ApplicationController
  layout 'current_affairs'
  before_action :set_job_associated_data, only: [:rbi_chart, :cabinet_secreteries]
  
  def rbi_chart
  end
  
  def cabinet_secreteries
  end
  
end
