puts "What's today's temperature?"

todays_temp = gets.chomp.to_i

def going_hiking(temp)
	if temp == 32
		return "Don't go outside today."
	
	elsif temp >= 50
		puts "#{temp} degrees is perfect for going hiking today!"

	elsif temp < 50
		puts "#{temp} degrees is WAY too cold for hiking today!"
	end
end

puts "What's tomorrow's temperature?"

tomorrows_temp = gets.chomp.to_i

def having_picnic(tom_temp)
	if tom_temp >= 65
		puts "Go for a picnic tomorrow! #{tom_temp} degrees is beautiful outside."

	else tom_temp < 65
		puts "Tomorrow will be too cold for a picnic."

	end
end

puts going_hiking(todays_temp)
puts having_picnic(tomorrows_temp)