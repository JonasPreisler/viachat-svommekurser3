class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|
      t.date :date
      t.time :time
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
