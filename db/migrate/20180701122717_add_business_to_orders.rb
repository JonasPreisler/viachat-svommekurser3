class AddBusinessToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :business, foreign_key: true
  end
end
