class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :post_names
      t.text :description
      t.string :age_limit
      t.string :eligibility
      t.text :experience
      t.integer :job_category_id
      t.integer :state_id
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps null: false
    end
  end
end
