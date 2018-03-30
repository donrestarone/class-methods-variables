class Zombie 
	@@horde = [] #should start as an empty array and will eventually contain the collection of all zombies.
	@@plague_level = 10 #should start at 10 and will be used to determine the rate at which new zombies are spawned. This value will increase over time.
	@@max_speed = 5 #this value wont change 
	@@max_strength = 8 #this value wont change 
	@@default_speed = 1 #this value wont change 
	@@default_strength = 3 #this value wont change 

	def initialize(speed, strength) 
		 	#If the speed argument is greater than @@max_speed then @@default_speed should be used as the new zombie's speed instead
		if speed > @@max_speed
			@speed = @@default_speed
		else @speed = speed
		end 
		#@strength = strength	#strength argument is less than or equal to @@max_strength, otherwise @@default_strength should be used as the new zombie's strength attribute.
		if strength >= @@max_strength
			@strength = @@default_strength
		else @strength = strength
		end 
	end 

	def encounter 

	end 

	def outrun_zombie?

	end 

	def survive_attack? 

	end 

	def self.all 

	end 

	def self.new_day 

	end 

	def self.some_die_off 

	end 

	def self.spawn 

	end 

	def self.increase_plague_level

	end 


end

zombie1 = Zombie.new(6, 10)

puts zombie1.inspect