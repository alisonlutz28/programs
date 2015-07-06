def your_name(name)
	puts "I didn't get your name, #{name}."
end

puts "Please enter your name:"
name = gets.chomp

puts your_name(name)