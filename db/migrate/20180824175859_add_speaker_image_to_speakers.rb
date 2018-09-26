class AddSpeakerImageToSpeakers < ActiveRecord::Migration[5.2]
  def change
    add_reference :speakers, :speaker_image, foreign_key: true
  end
end
