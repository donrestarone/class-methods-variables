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
			#strength argument is less than or equal to @@max_strength, otherwise @@default_strength should be used as the new zombie's strength attribute.
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
		number_of_horde = @@horde.count 
		return number_of_horde

	end 

	def self.new_day 

	end 

	def self.some_die_off 
		death_num = rand(10)
		alive_num = @@horde.count
		if death_num == alive_num
			@@horde.pop(death_num)

		elsif death_num > alive_num
			death_num = death_num - alive_num
			@@horde.pop(death_num)

		else death_num < alive_num
			@@horde.pop(death_num)

		end
	end 

	def self.spawn 
		random_number_for_plague = @@plague_level
		generated_number_p = rand(1..random_number_for_plague)

		random_speed_number = @@max_speed
		generated_number_sp = rand(1..random_speed_number)

		random_strength_number = @@max_strength
		generated_number_st = rand(1..random_strength_number)

		generated_number_p.times do
			zombiespeed = (generated_number_sp)
			zombiestrength = (generated_number_st)
			a_zombie = Zombie.new(zombiespeed,zombiestrength)
			@@horde.push(a_zombie)
		end
		return generated_number_p
	end 

	def self.all_zombies
		return @@horde
	end 

	def self.increase_plague_level

	end 


end

Zombie.spawn 
Zombie.spawn
puts Zombie.all_zombies.inspect
puts Zombie.all 

Zombie.some_die_off
puts Zombie.all_zombies.inspect

puts Zombie.all 



