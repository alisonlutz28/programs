module ApplicationHelper
	def hash_and_msg_generator(results, station)
		@message = ""

		@buses = {}

		results.each do |result|
			if result["TIMEPOINT"].include? station
# if the user's selection matches an upcoming bus stop in the api data, we will save that info in our hash.
				@buses[result["ROUTE"]] = result["VEHICLE"]
			end
		end

		if @buses.count == 0
			# no buses have the user's selected station as their next stop.
			@message = "Sorry, it's gonna be a while."
			# one bus will be making the user's station its next stop.
		elsif @buses.count == 1
			# 2 or more buses will be making the user's station their next stop.
			@message = "A bus is on the way!"
		elsif @buses.count > 1
			@message = "These buses will be coming soon:"
		else
			# just in case we end up with a negative number
			@message = "Oops! There was an error."
		end
	end
end