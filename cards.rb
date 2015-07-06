# Here, we're creating a method involving operations on an array, where the array is the set of cards.
def deal(card_array)
	poker_hand = [] #an empty array
	card_array = card_array.shuffle #we're performing the operation "shuffle" on the array
	poker_hand = card_array.first(5)
end



deck = ["A", "K", "Q", "J", 10, 9, 8, 7, 6, 5, 4, 3, 2]

my_hand = deal(deck) #Here, we're calling the method (deal) on the array (deck).
puts "Your first hand is: #{my_hand.inspect}."

my_hand = deal(deck)
puts "Your second hand is: #{my_hand.inspect}."