puts "What is 12-8?"
answer = gets.to_i

def correct(answer)
	if answer == 4
		puts "You're correct!"
	elsif answer != 4
		puts "Sorry, try again."
	end
end

correct(answer)