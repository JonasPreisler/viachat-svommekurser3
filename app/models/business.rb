class Business < ApplicationRecord
	mount_uploader :representative, RepresentativeUploader
	mount_uploader :logo, LogoUploader
	has_many :orders
	belongs_to :user, optional: :true
end
