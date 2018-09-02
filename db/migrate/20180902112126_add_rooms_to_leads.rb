class AddRoomsToLeads < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :rooms, :string
  end
end
