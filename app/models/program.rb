class Program < ApplicationRecord
	validates :sorting, :presence => true, :uniqueness => {:scope=>:user_id}
	validates :name, :presence => true
	validates :startday, :presence => true
	validates :event, :presence => true
	has_many :speakers, dependent: :destroy
	belongs_to :user
	belongs_to :event
    accepts_nested_attributes_for :speakers, allow_destroy: true
    mount_uploader :image, ImageUploader
    mount_uploader :speaker_image, ImageUploader
end
