class RoarSpot < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
