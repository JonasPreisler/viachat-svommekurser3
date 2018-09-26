class SpeakerImage < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :speaker

end
