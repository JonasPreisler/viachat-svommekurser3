class RemoveDateAndTimeFromSpeakers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :speakers, :date, :date
  	remove_column :speakers, :time, :time
  end
end
