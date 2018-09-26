class AddSpeakerToLeads < ActiveRecord::Migration[5.2]
  def change
    add_reference :leads, :speaker, foreign_key: true
  end
end
