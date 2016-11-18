class CreateUrlfavs < ActiveRecord::Migration[5.0]
  def change
    create_table :urlfavs do |t|
      t.text :url
      t.text :description

      t.timestamps
    end
  end
end
