class CreateTmps < ActiveRecord::Migration[5.0]
  def change
    create_table :tmps do |t|
      t.string :t

      t.timestamps
    end
  end
end
