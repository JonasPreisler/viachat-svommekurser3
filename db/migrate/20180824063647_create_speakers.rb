class CreateSpeakers < ActiveRecord::Migration[5.2]
  def change
    create_table :speakers do |t|
      t.string :title
      t.string :image
      t.string :description
      t.datetime :speakingtime
      t.string :speaker_link

      t.timestamps
    end
  end
end
