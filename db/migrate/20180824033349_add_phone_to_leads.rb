class AddPhoneToLeads < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :phone, :string
    add_column :leads, :email, :string
  end
end
