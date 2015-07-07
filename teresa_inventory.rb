grocery_inventory = {
    "Hot Pockets" => 100,
    "Cat Food"    => 50,
    "Pepsi"       => 25,
    "Chips"       => 1000,
    "Candy"       => 2000
}

def menu
	puts "Please select one of the following options to continue."
	puts "View"
	puts "Edit"
	puts "Delete"
	puts "New"
	puts "Quit"
	puts ""
	menu_choice = gets.chomp.downcase
	if menu_choice == "quit" 
		menu_choice = false
	end
	puts ""
	return menu_choice
end