class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.string :description
      t.string :slug

      t.timestamps
    end
    add_index :lists, :slug, unique: true
  end
end
