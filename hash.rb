# my_hash = {}
# my_hash["name"] = "Alison"
# my_hash["age"] = 25
# my_hash["eye_color"] = "brown"

# puts my_hash
#To call up the value of a certain key, write ["age"] following my_hash
# => is called a "hash rocket"



#Another (shorter) way to write hashes, if you know the value for each key, is:

	my_hash = {
		name: "Alison",
		age: "25",
		eye_color: "brown"
	}

#To display each key-value pair, you can use an .each do loop!
	my_hash.each do |key, value|
		puts "The key is #{key} and the value is #{value}."
	end