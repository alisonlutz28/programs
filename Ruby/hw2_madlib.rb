g = "Give me a"

puts g + " verb."
verb1 = gets.chomp

puts g + " noun."
noun1 = gets.chomp

puts g + " number."
number = gets.chomp.to_s

puts g +"n adjective."
adj1 = gets.chomp

puts g + " verb."
verb2 = gets.chomp

puts g + "n adjective."
adj2 = gets.chomp

puts g + " verb in the past tense."
verb3 = gets.chomp

puts g + "n adjective."
adj3 = gets.chomp

puts g + " place."
place = gets.chomp

puts g + " noun."
noun2 = gets.chomp

puts "The other day, I was #{verb1}ing when I sensed some giant #{noun1}s in the distance. There must have been at least #{number} of them! I was so #{adj1} that I couldn't even #{verb2}. You wouldn't believe how #{adj2} they were! Thankfully, I #{verb3} at the last minute and everything was #{adj3}. At least I learned my lesson. I'm never visting #{place} again. Not without my #{noun2}, at least!"