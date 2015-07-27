inventory = {}
#this is like starting with x = 0

def add_item(inventory, item, quantity)
	inventory[item] = quantity
	@full_inventory = inventory
	#this is what updates your inventory with the new item & quantity.
end

def inventory_edit(option)
	count = @full_inventory[option]
	#This means that "count" is the quantity (value) that matches the item (key) in the hash @full_inventory, which is our update inventory

	puts "\nPrevious units of #{option.upcase}: #{count}."
	puts "Would you like to add or subtract any units of #{option.upcase} from your inventory?\n1. Add\n2. Subtract"
	choice = gets.chomp
	while choice != "1" || choice != "2"
		puts "Please enter either 1 for Add or 2 for Subtract."
		choice = gets.chomp
	end
	case choice
	when "1"
		puts "Please enter how many units you would like to subtract:"
		user_input = gets.chomp.to_i
		while user_input > count.to_i
			puts "You only have #{count} units of #{option.upcase}. Please enter a valid number:"
			user_input = gets.chomp.to_i
		end
		count = count.to_i - user_input
		@full_inventory[option] = count
		#this updates the quantity in @full_inventory
	end
end

def inventory_list(inventory)
	counter = 0
	@full_inventory.each do |item, quantity|
		counter += 1
		if count.to_i > 1
			puts "\n#{counter}. There are #{count} units of #{item.upcase} in the inventory.\n"
		else
			puts "\n#{counter}. There is #{count} unit of #{item.upcase} in the inventory.\n"
		end
	end
end

puts "Welcome to inventory."
puts "Please add an item."
item = gets.chomp.downcase

puts "Please enter the quantity of the item."
quantity = gets.chomp.to_i

add_item(inventory, item, quantity)

while true
	puts "\nPlease select an option:"
	puts "\n1. Add New Item"
	puts "\n2. Edit Inventory"
	puts "\n3. Check Inventory"
	puts "\n4. Enter 'exit' to leave Inventory\n."
	choice = gets.chomp.downcase
		case choice
		when "1"
			puts "Please add an item."
			item = gets.chomp.downcase
			puts "Please enter the quantity of the item."
			quantity = gets.chomp.to_i
			add_item(inventory, item, quantity)
		when "2"
			puts @full_inventory.keys
			puts "Please select an item to edit:"
			option = gets.chomp.downcase
			