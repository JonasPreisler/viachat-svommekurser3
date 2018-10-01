class RemoveColumnsFromPrograms < ActiveRecord::Migration[5.2]
  def change
  	remove_column :programs, :speaker_name, :string
  	remove_column :programs, :speaker_about, :string
  	remove_column :programs, :speaker_image, :string
  end
end
