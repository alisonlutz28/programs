class Word < String

	def very_long?(string)
		if string.length >= 10
			puts "true"
		elsif string.length < 10
			puts "false"
		end
	end

end

w = Word.new("cantaloupe")
puts "The word is very long:"
puts w.very_long?(w)
puts "The class is #{w.class}."
puts "The superclass is #{w.class.superclass}."
puts "The length is #{w.length}."



# x = String.new("lovely")
# puts x.reverse