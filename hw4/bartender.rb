puts "What'll it be?"
drink = gets.chomp.to_s

puts "How old are you?"
age = gets.chomp.to_i

def bartender(drink, age)
	if age >= 21
		puts "Sure! One #{drink} coming right up."
	elsif age < 21
		puts "Sorry, kid. You need to wait #{(age-21).abs} years until I can serve you #{drink}."
	end
end

bartender(drink, age)