class CreateCurrentAffairs < ActiveRecord::Migration
  def change
    create_table :current_affairs do |t|
      t.text :description
      t.datetime :date
      t.integer :current_affair_category_id
      t.integer :daily_update_id
      t.timestamps null: false
    end
  end
end
