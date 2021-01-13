class Admin::ImagesController < ApplicationController
  http_basic_authenticate_with name: "Admin", password: "password123"

  def index
    @images = Image.order(id: :desc).all
  end

  def new
    @image = Images.new
  end

  def destroy
    @image = Image.find params[:id]
    @image.destroy
    redirect_to [:admin, :images], notice: 'Product deleted!'
  end

end
