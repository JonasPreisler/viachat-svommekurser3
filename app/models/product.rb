class Product < ApplicationRecord
	validates :sorting, :presence => true, :uniqueness => {:scope=>:user_id}
    mount_uploader :image, ImageUploader
	belongs_to :user
	has_many :product_images
    accepts_nested_attributes_for :product_images, allow_destroy: true

end
