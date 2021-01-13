class OrdersController < ApplicationController
  def index
    empty_cart!
    @images = Image.all.order(created_at: :desc)
  end
 
  def empty_cart!
    # empty hash means no products in cart :)
    update_cart({})
  end

end
