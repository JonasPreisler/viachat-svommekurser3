class CreateSortings < ActiveRecord::Migration[5.2]
  def change
    create_table :sortings do |t|

      t.timestamps
    end
  end
end
