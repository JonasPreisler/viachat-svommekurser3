class AddDayToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_reference :programs, :day, foreign_key: true
  end
end
