def atm_action(balance,action)
	case action
	when "1"
		puts "Please enter the amount you wish to withdraw:"
		amount = gets.chomp.to_f
		if balance < amount
			puts "Insufficient funds."
		else
			balance -= amount
		end
	when "2"
		puts "Please enter the amount you wish to deposit:"
		amount = gets.chomp.to_f
		balance += amount
	when "3"
		puts "Your balance is: $#{balance.round(2)}."
	when "exit"
		puts "Thank you for banking with Ruby ATM."
	else
		puts "Invalid Selection, try again!"
	end
	return balance.round(2)
end

puts "Hello! What is your name?"
name = gets.chomp.upcase

puts "Welcome to the Ruby ATM, #{name}. Please enter your initial balance:"
balance = gets.chomp.to_f

action = ""
while action != 'exit'
	puts " "
	puts "Please enter your selection:"
	puts " * Enter 1 for withdrawals."
	puts " * Enter 2 for deposits."
	puts " * Enter 3 to check your balance."
	puts " * Enter exit to leave the Ruby ATM."

	action = gets.chomp.downcase

	balance = atm_action(balance.round(2), action)
	puts "Transaction complete."
end