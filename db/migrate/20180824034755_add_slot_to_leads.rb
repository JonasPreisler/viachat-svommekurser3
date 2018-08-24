class AddSlotToLeads < ActiveRecord::Migration[5.2]
  def change
    add_reference :leads, :slot, foreign_key: true
  end
end
