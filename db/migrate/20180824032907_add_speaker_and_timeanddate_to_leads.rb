class AddSpeakerAndTimeanddateToLeads < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :speaker, :string
    add_column :leads, :timeanddate, :string
  end
end
