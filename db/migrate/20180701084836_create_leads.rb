class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :'first name'
      t.string :last_name
      t.string :'last name'
      t.string :gender
      t.string :source
      t.string :locale
      t.string :profile_pic_url
      t.string :'profile pic url'
      t.string :timezone
      t.string :messenger_user_id
      t.string :'messenger user id'
      t.string :chatfuel_user_id
      t.string :'chatfuel user id'
      t.string :ref
      t.string :country
      t.string :city
      t.string :state
      t.string :zip
      t.string :address
      t.string :latitude
      t.string :longitude
      t.string :map_url
      t.string :'map url'
      t.string :last_visited_block_name
      t.string :last_visited_block_id
      t.string :last_clicked_button_name
      t.string :last_user_freeform_input
      t.string :'last visited block name'
      t.string :'last visited block id'
      t.string :'last clicked_button name'
      t.string :'last user freeform input'

      t.timestamps
    end
  end
end
