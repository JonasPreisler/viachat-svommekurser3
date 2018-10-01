class Event < ApplicationRecord
	validates :name, :presence => true
	validates :address, :presence => true
	validates :image, :presence => true
    has_many :programs, dependent: :destroy
    has_many :speakers, dependent: :destroy
    belongs_to :user
    mount_uploader :image, ImageUploader
end
