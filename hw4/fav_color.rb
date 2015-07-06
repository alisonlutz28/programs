puts "What's your favorite color?"
fav_color = gets.chomp.downcase.to_s

def respond(fav_color)
	if fav_color == "blue" || fav_color == "green"
		puts "Good choice. That is a great color!"
	elsif fav_color != "blue" || fav_color != "green"
		puts "Really? #{fav_color.capitalize} is really not my favorite."
	end
end

respond(fav_color)