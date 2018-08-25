class PropertyImage < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :property

end
