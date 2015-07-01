puts "What's today's temperature?"

temp = gets.chomp.to_i

puts "Is it raining today? yes or no."

raining = gets.chomp.downcase

def hiking(temp, raining)
	if temp >=110 || temp <= -10
		puts "That is not a valid temperature."

	elsif temp > 85 && temp <= 110
		puts "It might be too warm to go hiking. Stay hydrated, if you do!"

	elsif temp < 50 || raining == "yes"
		puts "Don't go hiking today."

	elsif temp >= 50 && raining == "no" 
		puts "You should go hiking today!"

	elsif raining != "yes" || raining != "no"
		puts "I don't have enough information to help you."
	end
end

puts hiking(temp, raining)