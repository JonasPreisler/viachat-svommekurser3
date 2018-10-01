class AddEventToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_reference :programs, :event, foreign_key: true
  end
end
