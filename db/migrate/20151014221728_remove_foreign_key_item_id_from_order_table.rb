class RemoveForeignKeyItemIdFromOrderTable < ActiveRecord::Migration
  def change
    remove_foreign_key :orders, :items
  end
end
