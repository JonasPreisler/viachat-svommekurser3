class AddPlaceToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_column :programs, :place, :string
    change_column :programs, :speaker_about, :text
  end
end
