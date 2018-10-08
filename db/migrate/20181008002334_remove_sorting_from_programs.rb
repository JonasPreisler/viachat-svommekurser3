class RemoveSortingFromPrograms < ActiveRecord::Migration[5.2]
  def change
    remove_column :programs, :sorting, :integer
  end
end
