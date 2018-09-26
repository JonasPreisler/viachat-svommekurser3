class AddNummerToSpeakers < ActiveRecord::Migration[5.2]
  def change
    add_column :speakers, :nummer, :string
  end
end
