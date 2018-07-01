class AddFirstNameToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :'first name', :string
    add_column :orders, :'last name', :string
    add_column :orders, :'last purchased item', :string
  end
end
