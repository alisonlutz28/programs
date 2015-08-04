class Creature < ActiveRecord::Base
	belongs_to :trainer
	has_many :powers

	mount_uploader :image, ImageUploader
end
