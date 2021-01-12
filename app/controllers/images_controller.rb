class ImagesController < ApplicationController
  def index
    @images = Image.all.order(created_at: :desc)
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to [:images], notice: 'Image created!'
    else
      render :new
    end
  end

  private

  def image_params
    params.require(:image).permit(
      :name,
      :description, 
      :img_url
    )
  end
end
