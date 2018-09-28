class AddProgramToSpeakers < ActiveRecord::Migration[5.2]
  def change
    add_reference :speakers, :program, foreign_key: true
  end
end
