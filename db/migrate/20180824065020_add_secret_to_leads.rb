class AddSecretToLeads < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :secret, :string
  end
end
