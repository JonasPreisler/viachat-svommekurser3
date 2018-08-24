class AddLeadToSlots < ActiveRecord::Migration[5.2]
  def change
    add_reference :slots, :lead, foreign_key: true
  end
end
