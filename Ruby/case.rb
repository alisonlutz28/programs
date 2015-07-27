puts "Choose a number."

number = gets.chomp

if number == "5"
	puts "You entered 5."
elsif number == "6"
	puts "You entered 6."
else
	puts "you entered neither 5 nor 6."
end

case number
	when "5"
		puts "You entered 5."
	when "6"
		puts "You entered 6."
	else
		puts "You entered neither 5 nor 6."
end