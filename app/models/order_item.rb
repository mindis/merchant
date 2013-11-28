class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  validates :product, :order, presence: true

  def subtotal
    quantity * product.price
  end
end
