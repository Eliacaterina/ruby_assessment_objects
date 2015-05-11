class Person
	
	def initialize
		@first_name = first_name
		@last_name  = last_name
		@full_name  = full_name
	end

  attr_accessor :first_name, :last_name, :full_name #if I dont do this, then I cant do line 12-13
end 

elia = Person.new
elia.first_name = "Elia"

class Player < Person 
	def initialize
		@health   = 20
		@strength = 5
		@alive    = true
	end
	attr_accessor :health, :strength, :alive 

	def take_damage(attack_strength)
		@health = @health - attack_strength
	end 

	def attack(player)
		player.take_damage(self.strength) #who is going to take damage? the player. 
	end
end 

class Knight < Player
	def initialize
		@health = 50
		@strength =7
	end
end

class Wizard < Player
	def initialize
		@health = 20
		@strength = 75
	end
end


