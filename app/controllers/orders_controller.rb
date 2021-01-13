class OrdersController < ApplicationController
  def index
    empty_cart!
  end
  
  def show
    
  end

  def empty_cart!
    # empty hash means no products in cart :)
    update_cart({})
  end

end
