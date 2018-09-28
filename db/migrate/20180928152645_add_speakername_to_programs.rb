class AddSpeakernameToPrograms < ActiveRecord::Migration[5.2]
  def change
  	add_column :programs, :speaker_name, :string
  	add_column :programs, :speaker_about, :string
  	add_column :programs, :speaker_image, :string
  	add_column :programs, :image, :string
  end
end
