class RemoveSortingAndNummerFromSpeakers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :speakers, :sorting, :integer
  	remove_column :speakers, :nummer, :string
  end
end
