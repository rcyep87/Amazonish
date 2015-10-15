class Lineitem < ActiveRecord::Base
  belongs_to :order
  belongs_to :item
  has_many   :lineitems
end
