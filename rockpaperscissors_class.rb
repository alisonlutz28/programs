@yourscore = 0
@compscore = 0

until @compscore == 5 || @yourscore == 5

	puts "Please choose rock, paper, or scissors."
	@user_choice = gets.chomp.downcase

	choices = ["rock", "paper", "scissors"]
	@computer_choice = choices.sample

	puts "You chose #{@user_choice}."
	puts "The computer chose #{@computer_choice}."

		def compare
			if @user_choice == @computer_choice
				@yourscore += 0
				@compscore += 0
				puts "This round is a tie! The score is #{@yourscore}:#{@compscore}."

			elsif @user_choice == "rock" && @computer_choice == "paper"
				@yourscore += 0
				@compscore += 1
				puts "Computer wins this round! The score is #{@yourscore}:#{@compscore}."

			elsif @user_choice == "rock" && @computer_choice == "scissors"
				@yourscore += 1
				@compscore += 0			
				puts "You win this round! The score is #{@yourscore}:#{@compscore}."

			elsif @user_choice == "paper" && @computer_choice == "rock"
				@yourscore += 1
				@compscore += 0			
				puts "You win this round! The score is #{@yourscore}:#{@compscore}."

			elsif @user_choice == "paper" && @computer_choice == "scissors"
				@yourscore += 0
				@compscore += 1			
				puts "Computer wins this round! The score is #{@yourscore}:#{@compscore}."

			elsif @user_choice == "scissors" && @computer_choice == "rock"
				@yourscore += 0
				@compscore += 1				
				puts "Computer wins this round! The score is #{@yourscore}:#{@compscore}."

			elsif @user_choice == "scissors" && @computer_choice == "paper"
				@yourscore += 1
				@compscore += 0		
				puts "You win this round! The score is #{@yourscore}:#{@compscore}."

			end
		end

	compare

end