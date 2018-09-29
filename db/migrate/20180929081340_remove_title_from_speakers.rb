class RemoveTitleFromSpeakers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :speakers, :title, :string
  end
end
