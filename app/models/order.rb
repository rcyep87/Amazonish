class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  has_many :lineitems
  has_many :items, through: :lineitems

  def self.user_order_exists?(user) #checks to see if there is an empty array or if there is an order opened already by current user
    where(user_id: user.id).empty? || where(user_id: user.id) if user
  end

  def self.user_has_unpaid_order?(user) #checks to see if there is an incomplete order (unpaid)
    where(user_id: user.id, paid: false) if user
  end
end
