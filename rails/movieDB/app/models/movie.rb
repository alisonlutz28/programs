class Movie < ActiveRecord::Base
	belongs_to :genre
	belongs_to :actor

	validates :name, :description, uniqueness: true
	validates :rating, presence:true
	validates :rating, exclusion: {in:['X']}
end
