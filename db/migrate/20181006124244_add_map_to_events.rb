class AddMapToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :map, :string
  end
end
