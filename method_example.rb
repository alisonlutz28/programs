def your_name(name)
	puts "I didn't get your name,"
	return name
end

puts "Please enter your name:"
persons_name = gets.chomp

puts your_name(persons_name)