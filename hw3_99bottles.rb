x = 99
b = "Bottles of Beer"
w = "on the wall"
t = "Take one down, pass it around"

until x == 1
	puts "#{x} #{b} #{w}"
	puts "#{x} #{b}"
	puts "#{t}"
	x -= 1
	
	if x == 1
		puts "#{x} Bottle of Beer #{w}"
		puts "#{x} Bottle of Beer"
		puts "#{t}"
		puts "No more #{b} #{w}"
	end
end