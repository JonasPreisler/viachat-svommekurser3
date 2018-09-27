class AddTimeAndDateToSpeakers < ActiveRecord::Migration[5.2]
  def change
    add_column :speakers, :time, :time
    add_column :speakers, :date, :date
  end
end
