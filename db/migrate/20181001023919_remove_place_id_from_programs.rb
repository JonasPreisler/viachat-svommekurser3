class RemovePlaceIdFromPrograms < ActiveRecord::Migration[5.2]
  def change
    remove_column :programs, :place_id, :integer
  end
end
