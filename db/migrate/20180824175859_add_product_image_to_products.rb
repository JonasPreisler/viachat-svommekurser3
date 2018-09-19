class AddProductImageToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :product_image, foreign_key: true
  end
end
