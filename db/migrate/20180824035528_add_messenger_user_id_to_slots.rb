class AddMessengerUserIdToSlots < ActiveRecord::Migration[5.2]
  def change
    add_column :slots, :messenger_user_id, :string
  end
end
