class Product < ActiveRecord::Base
  validates :stock, numericality: true
  validates :stock, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
