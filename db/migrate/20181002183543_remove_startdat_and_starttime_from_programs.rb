class RemoveStartdatAndStarttimeFromPrograms < ActiveRecord::Migration[5.2]
  def change
  	remove_column :programs, :startday, :date
  end
end
