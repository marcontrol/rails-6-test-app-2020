class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :answer
      t.string :type
      t.string :distractor_1
      t.string :distractor_2
      t.integer :quiz_id

      t.timestamps
    end
  end
end