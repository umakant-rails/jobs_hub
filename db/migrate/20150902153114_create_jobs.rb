class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :age_limit
      t.text :qualifications
      t.text :selection_procedure
      t.text :experience
      t.string :application_fee
      t.text :how_to_apply
      t.text :apply_online_link
      t.integer :website_ads_link
      t.integer :job_category_id
      t.integer :state_id
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :tentative_exam_date
      t.timestamps null: false
    end
  end
end
