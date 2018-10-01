class Event < ApplicationRecord
    has_many :programs, dependent: :destroy
    has_many :speakers, dependent: :destroy
    belongs_to :user
    mount_uploader :image, ImageUploader
end
