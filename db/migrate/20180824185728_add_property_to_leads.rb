class AddPropertyToLeads < ActiveRecord::Migration[5.2]
  def change
    add_reference :leads, :property, foreign_key: true
  end
end
