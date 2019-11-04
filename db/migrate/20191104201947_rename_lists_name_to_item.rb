class RenameListsNameToItem < ActiveRecord::Migration[5.2]
  def change
    rename_column :lists, :name, :item 
  end
end
