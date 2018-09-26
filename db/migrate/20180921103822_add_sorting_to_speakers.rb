class AddSortingToSpeakers < ActiveRecord::Migration[5.2]
  def change
    add_column :speakers, :sorting, :integer
  end
end
