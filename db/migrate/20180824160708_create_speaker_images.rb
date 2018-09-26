class CreateSpeakerImages < ActiveRecord::Migration[5.2]
  def change
    create_table :speaker_images do |t|
      t.integer :speaker_id
      t.string :image

      t.timestamps
    end
  end
end
