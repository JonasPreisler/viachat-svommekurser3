class AddNameToSpeakers < ActiveRecord::Migration[5.2]
  def change
    add_column :speakers, :name, :string
  end
end
