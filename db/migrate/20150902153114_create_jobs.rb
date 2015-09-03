class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :age_limit
      t.string :eligibility
      t.text :experience
      t.integer :job_type_id
      t.integer :state_id
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps null: false
    end
  end
end
