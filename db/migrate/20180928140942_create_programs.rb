class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.date :startday
      t.time :starttime
      t.time :endtime
      t.string :name
      t.integer :speaker_id
      t.integer :place_id
      t.text :description

      t.timestamps
    end
  end
end
