class Property < ApplicationRecord
    mount_uploader :image, ImageUploader
	belongs_to :user
	has_many :property_images
	has_many :leads
    accepts_nested_attributes_for :property_images, allow_destroy: true

end
