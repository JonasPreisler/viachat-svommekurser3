class ChangeDescriptionInSpeakers < ActiveRecord::Migration[5.2]
  def change
  	change_column :speakers, :description, :text
  end
end
