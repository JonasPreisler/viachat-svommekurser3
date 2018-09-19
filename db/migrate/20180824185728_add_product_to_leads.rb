class AddProductToLeads < ActiveRecord::Migration[5.2]
  def change
    add_reference :leads, :product, foreign_key: true
  end
end
