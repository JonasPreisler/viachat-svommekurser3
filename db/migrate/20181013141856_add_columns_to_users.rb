class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_reference :users, :team, foreign_key: true
  	add_column :users, :name, :string
  	add_column :users, :surname, :string
  	add_column :users, :phone, :string
  end
end
