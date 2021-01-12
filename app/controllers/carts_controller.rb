class CartsController < ApplicationController
  def show
  end

  def add_item
    image_id = params[:image_id].to_s
    modify_cart_delta(image_id, +1)

    redirect_to :back
  end

  def remove_item
    image_id = params[:image_id].to_s
    modify_cart_delta(image_id, -1)

    redirect_to :back
  end

  private

  def modify_cart_delta(image_id, delta)
    cart[image_id] = (cart[image_id] || 0) + delta
    cart.delete(image_id) if cart[image_id] < 1
    update_cart cart
  end
end
