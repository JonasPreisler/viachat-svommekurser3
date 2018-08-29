class AddNewColumnsToLeads < ActiveRecord::Migration[5.2]
  def change
  	add_column :leads, :deadline, :string
  	add_column :leads, :purpose, :string
  	add_column :leads, :type, :string
  	add_column :leads, :price_filter, :string
  	add_column :leads, :budget, :string
  	add_column :leads, :area, :string
  	add_column :leads, :pet, :string
  end
end
