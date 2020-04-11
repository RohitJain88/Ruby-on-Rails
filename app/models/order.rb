class Order < ApplicationRecord
  has_many :lineitems, dependent: :destroy

  PAYMENT_TYPES = ["Cash", "Credit Card", "Debit Card", "Zelle"]
  validates :name, :address, :email, presence: true 
  validates :paytype, inclusion: PAYMENT_TYPES

  def add_items_from_cart(cart) 
    cart.lineitems.each do |item|
      item.update_attributes(:cart_id => nil, :order_id => self.id)
    end
  end
end
