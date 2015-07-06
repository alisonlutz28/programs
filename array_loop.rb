# my_array = []

# my_array.<<("Hello")
# my_array.<<("Alison")
# my_array.<<([1, 2, 3])


# puts my_array
# you can add things like .sample, .reverse, .shuffle, etc... to bring up the arry in different ways
# you can also have "puts my_array[2]" to bring up the object on a certain line of your array!

scores = [100, 85, 30, 79]

i = 0
#this is our index value, or the position/place in our array. For example, i = 0 is 100, i = 1 is 85, i = 2 is 30, i = 3 is 79. We could also call it "counter," or anything.

sum = 0

while i < scores.length
#.length is a way of counting the number of objects in an array. In this case, it's 4 (but if we had 10 scores, .length would be 10)
	sum = sum + scores[i]
	#in the first iteration, we're calling the 0 position in scores (100)
	#in the second iteration, we're calling the 1 position in scores (85)
	#...
	i += 1
end

puts "The total is #{sum}."