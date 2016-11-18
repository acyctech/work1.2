class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.text :doing
      t.text :problem
      t.text :solve
      t.text :reference

      t.timestamps
    end
  end
end
