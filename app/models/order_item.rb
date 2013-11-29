class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  validates :product, :order, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0}

  def subtotal
    quantity * product.price
  end
end
