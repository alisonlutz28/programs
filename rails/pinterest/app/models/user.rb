class User < ActiveRecord::Base
	has_many :boards, dependent: :destroy
	has_many :pins

	validates :first_name, :presence => true, length: {:minimum => 2}
	validates :last_name, :presence => true, length: {:minimum => 2}
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	# This requires an actual email address in the form ___@___.___

	def full_name
		"#{last_name}, #{first_name}"
	end
end