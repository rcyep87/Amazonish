class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :item_qty,   default: 0
      t.boolean :paid,       default: false
      t.boolean :email_sent, default: false
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
