module Admin::JobPostsHelper

  def get_job_qualification
    job_posts = @job.job_posts
    job_post_str = ''

    if job_posts && job_posts.map(&:qualifications).uniq.size == 1
      return job_posts.map(&:qualifications)[0]
    elsif job_posts.present?
      job_posts.each do | job_post |
        job_post_str = job_post_str + "<strong>" + job_post.post_name + " </strong>" + job_post.qualifications + "<br/>"
      end
      return job_post_str.html_safe
    else
      return 'Please add job posts for this Job.'
    end
  end
end
