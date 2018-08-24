class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :last_purchased_item
      t.string :address
      t.string :phone
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :amount
      t.references :lead, index: :true

      t.timestamps
    end
  end
end
