class AddCategoryToLeads < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :category, :string
  end
end
