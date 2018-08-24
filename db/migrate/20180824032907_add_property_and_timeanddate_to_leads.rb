class AddPropertyAndTimeanddateToLeads < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :property, :string
    add_column :leads, :timeanddate, :string
  end
end
