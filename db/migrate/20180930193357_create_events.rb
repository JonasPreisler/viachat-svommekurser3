class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :program_id
      t.integer :speaker_id
      t.string :name
      t.string :ticket
      t.string :image
      t.string :address

      t.timestamps
    end
  end
end
