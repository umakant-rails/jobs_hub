class CreateDailyUpdates < ActiveRecord::Migration
  def change
    create_table :daily_updates do |t|
      t.datetime :date
      t.string :title
      t.timestamps null: false
    end
  end
end
