class AddSortingToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_column :programs, :sorting, :integer
  end
end
