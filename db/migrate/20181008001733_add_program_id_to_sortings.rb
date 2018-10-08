class AddProgramIdToSortings < ActiveRecord::Migration[5.2]
  def change
    add_column :sortings, :program_id, :integer
  end
end
