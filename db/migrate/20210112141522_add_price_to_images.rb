class AddPriceToImages < ActiveRecord::Migration
  def change
    add_column :images, :price_cents, :integer
  end
end
