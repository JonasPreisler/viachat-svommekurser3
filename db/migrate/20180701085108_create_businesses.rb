class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :name
      t.integer :user_id
      t.string :image
      t.string :website
      t.string :secret
      t.string :slug

      t.timestamps
    end
  end
end
