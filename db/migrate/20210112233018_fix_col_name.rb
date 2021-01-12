class FixColName < ActiveRecord::Migration
  def change
    rename_column :images, :img_url, :image
  end
end
