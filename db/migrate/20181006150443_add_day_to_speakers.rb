class AddDayToSpeakers < ActiveRecord::Migration[5.2]
  def change
    add_reference :speakers, :day, foreign_key: true
  end
end
