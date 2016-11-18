class CreateExams < ActiveRecord::Migration[5.0]
  def change
    create_table :exams do |t|
      t.string :category
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end
