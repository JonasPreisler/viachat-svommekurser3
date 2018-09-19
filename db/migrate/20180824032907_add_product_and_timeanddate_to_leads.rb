class AddProductAndTimeanddateToLeads < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :product, :string
    add_column :leads, :timeanddate, :string
  end
end
