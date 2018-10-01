class AddEventToSpeakers < ActiveRecord::Migration[5.2]
  def change
    add_reference :speakers, :event, foreign_key: true
  end
end
