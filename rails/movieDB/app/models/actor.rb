class Actor < ActiveRecord::Base
	has_many :movies
	belongs_to :genre

	validates :name, presence: true
	#This ensures the 'name' field is not blank!
	validates :bio, length: {maximum: 500}
	validates :name, uniqueness: true
end