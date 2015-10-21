class CreateCurrentAffairs < ActiveRecord::Migration
  def change
    create_table :current_affairs do |t|
      t.text :description
      t.integer :current_affair_category_id
      t.datetime :date
      
      t.timestamps null: false
    end
  end
end
