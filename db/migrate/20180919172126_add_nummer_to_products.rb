class AddNummerToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :nummer, :string
  end
end
