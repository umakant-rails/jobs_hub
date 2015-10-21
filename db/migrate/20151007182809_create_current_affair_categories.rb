class CreateCurrentAffairCategories < ActiveRecord::Migration
  def change
    create_table :current_affair_categories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
