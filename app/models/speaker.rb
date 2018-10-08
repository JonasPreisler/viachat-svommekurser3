class Speaker < ApplicationRecord
	validates :sorting, :presence => true, :uniqueness => {:scope=>:event_id}
	validates :name, :presence => true
    mount_uploader :image, ImageUploader
	belongs_to :program
	belongs_to :user
	belongs_to :event
	belongs_to :sorting
	has_many :speaker_images
    accepts_nested_attributes_for :speaker_images, allow_destroy: true
end