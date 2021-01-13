class ImagesController < ApplicationController
  def index
    @images = Image.all.order(created_at: :desc)
  end

  def new
    @image = Image.new
  end

  def search
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = (params[:search].downcase << '%').prepend('%')
      @results = Image.where("lower(description) LIKE :search OR lower(name) LIKE :search OR lower(keywords) LIKE :search", search: @parameter)
    end
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
      :price_cents,
      :image
    )
  end
end
