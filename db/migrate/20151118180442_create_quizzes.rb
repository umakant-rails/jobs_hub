class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :title
      t.integer :quiz_category_id
      t.integer :alloted_time
      t.integer :number_of_question
      t.datetime :date
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
