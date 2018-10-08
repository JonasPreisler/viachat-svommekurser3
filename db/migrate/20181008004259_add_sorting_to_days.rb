class AddSortingToDays < ActiveRecord::Migration[5.2]
  def change
    add_reference :days, :sorting, foreign_key: true
  end
end
