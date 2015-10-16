class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  has_many :lineitems
  has_many :items, through: :lineitems
end
