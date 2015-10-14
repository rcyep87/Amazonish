class AddLineItemTable < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.integer :quantity,   default: 0
      t.belongs_to :order, index: true, foreign_key: true
      t.belongs_to :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
