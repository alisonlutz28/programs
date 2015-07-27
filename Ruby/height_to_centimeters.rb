puts "How tall are you, in inches?"

height_inches = gets.chomp.to_f
#This is your height in inches, as a decimal.

c = height_inches * 2.54
#c represents your height in centimeters.

puts "OMG! You're #{c.to_s} centimeters tall."

#puts height_inches.to_s + " inches = " + height_centimeters.to_s + " centimeters."


# 60 inches = 152.4 centimeters