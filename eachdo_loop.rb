scores = [100, 85, 30, 79]

sum = 0

scores.each do |score|
	sum = sum + score
end

puts "The total is #{sum}."

#This cuts out the hassle of having to figure out the index number of each element in the array and then perform the operation on every single one of the elements. It automatically does the operation on EACH element!