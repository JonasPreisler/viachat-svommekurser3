class Program < ApplicationRecord
	validates :sorting_id, :presence => true, :uniqueness => {:scope=>:day_id}
	validates :name, :presence => true
	has_one :speaker, dependent: :destroy
	belongs_to :user
	belongs_to :day
	belongs_to :event
	belongs_to :sorting
    mount_uploader :image, ImageUploader
    mount_uploader :speaker_image, ImageUploader
    accepts_nested_attributes_for :speaker, allow_destroy: true


end