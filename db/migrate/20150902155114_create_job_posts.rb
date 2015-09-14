class CreateJobPosts < ActiveRecord::Migration
  def change
    create_table :job_posts do |t|
      t.string :post_name
      t.integer :vacancies
      t.string :salary
      t.text :qualifications
      t.integer :job_id
      t.timestamps null: false
    end
  end
end
