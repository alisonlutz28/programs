@balance = 0

puts "Hello! What's your name?"
name = gets.chomp.capitalize
puts "Welcome to the Ruby ATM, #{name}.  Please enter your initial deposit:"
@balance += gets.chomp.to_i
@action = ""

def atm_action
	case @action
		when '1'
			puts 'Enter amount to withdraw:'
			withdrawal = gets.chomp.to_i
			
			while withdrawal > @balance
				puts 'Insufficient funds. Please enter a smaller amount.'
				withdrawal = gets.chomp.to_i
			end

			puts 'Balance is now: ' "$#{@balance - withdrawal}"
			@balance -= withdrawal
		when '2'
			puts 'Enter amount to deposit'
			deposit = gets.chomp.to_i
			puts 'Balance is now: ' "$#{@balance + deposit}"
			@balance += deposit
		when '3'
			puts 'Balance is: ' "$#{@balance}"
			@balance = @balance
	end
end

while @action != 'exit'
  puts "Please enter your selection:"
  puts "  * Enter 1 for withdrawals "
  puts "  * Enter 2 for deposits "
  puts "  * Enter 3 to check your balance "
  puts "  * Enter exit to leave the Ruby ATM "
  @action = gets.chomp.downcase
  @balance = atm_action
  puts "Transaction complete."
end


atm_action