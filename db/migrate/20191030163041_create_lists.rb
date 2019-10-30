class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :quantity
      t.integer :price
      t.timestamps
    end
  end
end
