class Speaker < ApplicationRecord
	validates :time, :presence => true
	validates :date, :presence => true
	validates :sorting, :presence => true, :uniqueness => {:scope=>:user_id}
    mount_uploader :image, ImageUploader
	belongs_to :user
	has_many :speaker_images
    accepts_nested_attributes_for :speaker_images, allow_destroy: true

end
