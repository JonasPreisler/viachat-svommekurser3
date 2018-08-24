class ChangeDescriptionInProperties < ActiveRecord::Migration[5.2]
  def change
  	change_column :properties, :description, :text
  end
end
