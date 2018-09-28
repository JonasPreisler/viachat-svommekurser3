class ChangeDescriptionInPrograms < ActiveRecord::Migration[5.2]
  def change
  	change_column :programs, :description, :text
  end
end
