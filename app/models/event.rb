class Event < ApplicationRecord
	validates :name, :presence => true
	validates :address, :presence => true
	validates :image, :presence => true
    has_many :speakers, dependent: :destroy
    has_many :days, dependent: :destroy
    has_many :programs, dependent: :destroy
    belongs_to :user
    mount_uploader :image, ImageUploader
    accepts_nested_attributes_for :days, allow_destroy: true
end