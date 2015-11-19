  class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.string :answer
      t.text :description
      t.string :reference
      t.integer :questioinable_id
      t.string :questioinable_type
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
