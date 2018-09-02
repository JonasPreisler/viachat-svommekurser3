class AddCityareaToLeads < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :cityarea, :string
  end
end
