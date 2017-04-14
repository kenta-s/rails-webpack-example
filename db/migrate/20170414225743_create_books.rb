class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :price

      t.timestamps
    end
    add_index :books, :title
  end
end
