class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  has_many :lineitems
  has_many :items, through: :lineitems

  def self.user_order_exists?(user)
    where(user_id: user.id).empty? if user
  end

  def self.user_has_unpaid_order?(user)
    where(user_id: user.id, paid: false)
  end
end
