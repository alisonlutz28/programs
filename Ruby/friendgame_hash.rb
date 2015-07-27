friendgame_hash = {}
input = ""
friend = ""
game = ""

puts "Enter name of friend, then their favorite game: or Press Enter to quit "
input = gets.chomp

# Curly braces after do were incorrect.
while input != "" do 
 puts "Enter name of friend: "
 friend = gets.chomp
 puts "Enter friends favorite game: "
 game = gets.chomp

 # There was a typo here
 friendgame_hash[friend] = game
 input = gets.chomp
end

puts "Here is the content that was in the hash: "
friendgame_hash.each do |key, value|
 puts "#{key} => #{value}"
end