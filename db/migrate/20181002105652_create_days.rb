class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.references :event, foreign_key: true
      t.date :date
      t.integer :program_id

      t.timestamps
    end
  end
end
