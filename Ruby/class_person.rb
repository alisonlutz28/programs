class Person
	attr_accessor :first_name, :last_name, :gender, :age

	def initialize(first_name, last_name, gender, age)

		@first_name = first_name
		@last_name = last_name
		@gender = gender
		@age = age
	end

	def introduction
		puts "#{@first_name} #{@last_name} is a #{@age}-year-old #{gender}."
	end
end

class Student < Person

	def learning
		puts "#{@first_name} is learning!"
	end
end

class Teacher < Person
	def teaching
		puts "Professor #{@last_name} is teaching."
	end
end

s1 = Student.new("Alison", "Lutz", "female", 25)
s2 = Student.new("John", "Smith", "male", 31)
t = Teacher.new("Miss", "Frizzle", "female", 40)

t.teaching

s1.introduction
s1.learning

s2.introduction
s2.learning
