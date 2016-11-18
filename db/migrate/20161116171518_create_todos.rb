class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :who
      t.text :what
      t.date :when
      t.string :where
      t.text :how
      t.text :why
      t.text :result
      t.string :flag

      t.timestamps
    end
  end
end
