class AddPropertyImageToProperties < ActiveRecord::Migration[5.2]
  def change
    add_reference :properties, :property_image, foreign_key: true
  end
end
