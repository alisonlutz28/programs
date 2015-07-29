class Pin < ActiveRecord::Base
	belongs_to :board
	belongs_to :user

	mount_uploader :image, ImageUploader
	# this connects the gem ImageUploader from the carrierwave gem to our "image" variable
end