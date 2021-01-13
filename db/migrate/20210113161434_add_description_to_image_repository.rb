class AddDescriptionToImageRepository < ActiveRecord::Migration
  def change
    add_column :images, :keywords, :string
  end
end
