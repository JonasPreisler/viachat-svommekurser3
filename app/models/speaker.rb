class Speaker < ApplicationRecord
	validates :name, :presence => true
    mount_uploader :image, ImageUploader
	belongs_to :user
	has_many :speaker_images
	belongs_to :program
    accepts_nested_attributes_for :speaker_images, allow_destroy: true
end