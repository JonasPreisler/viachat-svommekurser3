class AddLastPaymentChargeIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :last_payment_charge_id, :string
    add_column :orders, :'last payment charge id', :string
    add_column :orders, :last_payment_address, :string
    add_column :orders, :'last payment address', :string
    add_column :orders, :last_payment_phone, :string
    add_column :orders, :'last payment phone', :string
    add_column :orders, :last_payment_email, :string
    add_column :orders, :'last payment email', :string
  end
end
