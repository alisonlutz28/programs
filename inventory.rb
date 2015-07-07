products = {}

@answer = ""
@item = ""
@quantity = 0

puts "Welcome to inventory! Would you like to add an item? yes or no"
@answer = gets.chomp.downcase

def create_item
	if @answer == "yes"
		puts "Enter an item."
		@item = gets.chomp.upcase
		
		puts "Enter the quantity of the item."
		@quantity = gets.chomp.to_i

		puts "You have now added #{@quantity} units of #{@item} in your inventory. Would you like to add another item? yes or no"
		@products.each do |item, quantity|

		@answer = gets.chomp.downcase
	end

	elsif @answer == "no"
		puts "Here is your current inventory: "
		products.each do |item, quantity|
			puts "#{item} : #{quantity} units."
		end
	end
end

create_item