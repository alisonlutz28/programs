puts "What is your first name?"
first_name = gets.chomp.capitalize

puts "What is your last name?"
last_name = gets.chomp.capitalize

def name_length(first_name, last_name)
	puts "Your name is #{first_name} #{last_name}."
	puts "There are #{first_name.length + last_name.length} letters in your name."
end

name_length(first_name, last_name)