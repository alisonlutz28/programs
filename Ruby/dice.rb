def roll(dice)
	dice = dice.sample
end

dice = [1, 2, 3, 4, 5, 6]

first_value = roll(dice)
puts "The first number you rolled is #{first_value.inspect}."

second_value = roll(dice)
puts "The second number you rolled is #{second_value.inspect}."