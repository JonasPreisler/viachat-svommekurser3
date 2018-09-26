class AddUserToSpeakers < ActiveRecord::Migration[5.2]
  def change
    add_reference :speakers, :user, foreign_key: true
  end
end
