class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :address
      t.string :image
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
