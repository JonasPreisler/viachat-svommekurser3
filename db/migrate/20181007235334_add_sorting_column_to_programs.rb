class AddSortingColumnToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_reference :programs, :sorting, foreign_key: true
  end
end
