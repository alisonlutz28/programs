# ........................
# advice = "Few things in life are as important as house training your pet dinosaur."

# puts advice.gsub!("important", "urgent")
# ........................


# ......................
# puts "Choose an integer."
# @your_number=gets.chomp.to_i

# if @your_number<10 || @your_number>100
# 	puts "Your number is not between 10 and 100."
# else puts "Your number is between 10 and 100."
# end
# .......................

# puts (10..100).cover?(42)



# ......................
# def intro(famous_words)
# 	puts "Four score " + famous_words 
# end

# famous_words = "and seven years ago..."

# puts intro(famous_words)
# .......................


# puts famous_words.prepend("Four score ")


# flintstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]


# flintstones.flatten!

# puts flintstones.inspect


# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }


# puts flintstones.assoc("Barney")

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# flintstones_hash = {}
# flintstones.each_with_index do |name, index|
# 	flintstones_hash[name] = index
# end

# puts flintstones_hash

# 10.times { |number| puts (" " * number) + "The Flintstones Rock!"}

# 10.times do |number|
# 	puts (" "* number) + "The Flintstones Rock!"
# end




# statement = "The Flintstones Rock!"

# result = {}
# letters = ("A".."Z").to_a + ("a".."z").to_a
# letters.each do |letter|
# 	letter_frequency = statement.scan(letter).count
# 	result[letter] = letter_frequency if letter_frequency > 0
# end

# puts result


# puts statement.scan(/\w/).inject(Hash.new(0)){|h, c| h[c] += 1; h}
# (/\w/) means 'regular expression'

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end


def factors(number)
  dividend = number
  divisors = []
  if dividend > 0
  	while dividend != 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  	end
  elsif dividend <= 0
  	while dividend != 0
  		divisors << number / dividend if number % dividend == 0
  		dividend += 1
  	end
  end
  divisors
end

puts factors(10)