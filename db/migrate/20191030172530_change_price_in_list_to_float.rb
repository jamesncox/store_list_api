class ChangePriceInListToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :lists, :price, :float
  end
end
