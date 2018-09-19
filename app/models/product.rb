class Product < ApplicationRecord
    mount_uploader :image, ImageUploader
	belongs_to :user
	has_many :product_images
    accepts_nested_attributes_for :product_images, allow_destroy: true

end