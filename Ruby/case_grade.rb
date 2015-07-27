puts 'Enter your grade:'
grade = gets.chomp.upcase

until grade == 'QUIT'
	case grade
		when'A'
			puts 'Great Job!'
		when 'B'
			puts 'Not Bad!'
		when 'C'
			puts 'You need help.'
		else
			puts 'You are just making it up.'
	end

	puts 'Enter your grade or type "quit" to end.'
	grade = gets.chomp.upcase
end