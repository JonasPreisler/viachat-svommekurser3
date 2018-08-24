class CreatePropertyImages < ActiveRecord::Migration[5.2]
  def change
    create_table :property_images do |t|
      t.integer :property_id
      t.string :image

      t.timestamps
    end
  end
end
