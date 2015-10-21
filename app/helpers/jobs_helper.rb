module JobsHelper

  def get_job_posts(job)
    job.job_posts.map(&:post_name).join(', ')
  end

end
