puts "I'm going to copy everything you say!"

while true
	response = gets.chomp.to_s
	puts response
	if response == "I'm a dummy"
		puts "Hey, wait a second!"
		break
	end
end