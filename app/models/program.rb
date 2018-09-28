class Program < ApplicationRecord
	has_many :speakers
	belongs_to :user
    accepts_nested_attributes_for :speakers, allow_destroy: true
    mount_uploader :image, ImageUploader
    mount_uploader :speaker_image, ImageUploader
end
