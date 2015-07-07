class Animal
	attr_accessor :common_name, :genus, :species

	def initialize(common_name, genus, species)
		@common_name = common_name
		@genus = genus
		@species = species
	end

	def scientific_name
		puts "#{@genus.capitalize} #{@species.downcase} is commonly known as a(n) #{@common_name}."
	end
end

l = Animal.new("lion", "panthera", "leo")
p = Animal.new("polar bear", "ursus", "maritimus")
o = Animal.new("orangutan", "Pan", "pygmaeus")
s = Animal.new("Snorlax", "pokemon", "drowsimum")

l.scientific_name
p.scientific_name
o.scientific_name
s.scientific_name