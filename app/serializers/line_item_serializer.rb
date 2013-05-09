class LineItemSerializer < ApplicationSerializer
  attributes :id, :quantity
  has_one :product
end
