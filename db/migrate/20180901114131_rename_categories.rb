class RenameCategories < ActiveRecord::Migration[5.2]
  def change
  	rename_column :leads, :category, :property_type
  end
end
