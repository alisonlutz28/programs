def roll(dice_array_1, dice_array_2)
	dice_hand = []
	dice_hand<<dice_array_1.sample
	dice_hand<<dice_array_2.sample
end

dice = [1, 2, 3, 4, 5, 6]
dice2 = [1, 2, 3, 4, 5, 6]

# deal the first dice_hand
my_hand = roll(dice, dice2)
puts "Your first roll is: #{my_hand.inspect}"

my_hand = roll(dice, dice2)
puts "Your second roll is: #{my_hand.inspect}"