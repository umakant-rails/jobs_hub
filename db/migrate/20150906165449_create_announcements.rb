class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :job_name
      t.text :description
      t.integer :announcement_type_id
      t.string :website_link
      t.datetime :date

      t.timestamps null: false
    end
  end
end
