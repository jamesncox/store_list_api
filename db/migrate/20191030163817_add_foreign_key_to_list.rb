class AddForeignKeyToList < ActiveRecord::Migration[5.2]
  def change
    add_reference :lists, :store, index: true
  end
end
