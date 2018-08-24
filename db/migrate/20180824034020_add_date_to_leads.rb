class AddDateToLeads < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :date, :date
  end
end
