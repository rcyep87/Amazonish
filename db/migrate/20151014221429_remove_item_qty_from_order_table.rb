class RemoveItemQtyFromOrderTable < ActiveRecord::Migration
  def change
    remove_column :orders, :item_qty
  end
end
