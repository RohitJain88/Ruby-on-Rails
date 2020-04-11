class ShopperController < ApplicationController
	include CurrentCart
	before_action :set_cart
	skip_before_action :authorize


# GET /shopper
# GET /products.json
  def index
  	@product = Product.order(:name)
  end
end


