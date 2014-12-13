#create a class for a car with a money factor involved, where you can lose and win money in races and have to spend money on gas and repairs - perhaps not that indepth.

class Car
	def initialize(car,color)
		@car = car
		@color = color
		@gasAmount = 16
		@enginePercentage = 100
		@wheelsPercentage = 100
		@carBodyPercentage = 100
	end

	def car
		return @car
	end

	def color
		return @color
	end

	def gasAmount
		return @gasAmount
	end

	def enginePercentage
		return @enginePercentage
	end

	def wheelsPercentage
		return @wheelsPercentage
	end

	def carBodyPercentage
		return @carBodyPercentage
	end
end

	

class Human
	def initialize(name)
		@name = name
		$money = 250
		@gasAmount = 16
		@enginePercentage = 100
		@wheelsPercentage = 100
		@carBodyPercentage = 100
	end

	#def money
	#	puts @money
	#end


	def commands
		puts "You can do the following commands:"
		puts "----------------------------------------------------"
		puts "h.repair | This repairs the car for $100. Make sure you have enough money, otherwise if you do not, the game will end."
		puts "----------------------------------------------------"
		puts "h.gasRefill | This refills your gas for $50 no matter how low or high your gas amount is."
		puts "----------------------------------------------------"
		puts "h.shortRace | This will initiate a short race which you can win $50. You have a 50% chance of winning."
		puts "----------------------------------------------------"
		puts "h.mediumRace | This will initiate a medium race which you can win $75. You have a 33% chance of winning."
		puts "----------------------------------------------------"
		puts "h.largeRace | This will initiate a large race which you can win $100. You have a 25% chance of winning."
		puts "----------------------------------------------------"
		puts "h.checkMoney | This shows your money."
		puts "----------------------------------------------------"
		puts "h.checkCar | This shows your percentages of your engine, wheels, and car body. Keep these in mind, they are what make your car run!"
		puts "----------------------------------------------------"
		puts "h.repair | This will repair the engine, wheels, and car body percentage for $100 no matter how low or high."
		puts "----------------------------------------------------"
		puts "h.quit | Quits the game."
		puts "----------------------------------------------------"
		puts "h.commands | Gives you all of the possible commands listed above."
		puts "----------------------------------------------------"
	end

	def results
		puts "This is your money. " + $money.to_s
		puts "This is your gas. " + @gasAmount.to_s
		puts "This is your engine percentage. " + @enginePercentage.to_s
		puts "This is your wheels percentage. " + @wheelsPercentage.to_s
		puts "This is your car body percentage. " + @carBodyPercentage.to_s
	end

	def gasRefill
		puts "Please note that all refills cost $50, no matter how low or high. Would you like to continue? Please answer with yes or no. Here is your current gas amount: " + @gasAmount.to_s
		answer = gets.chomp
		if answer == "yes"
			@gasAmount = 16
			$money = $money - 50
		else answer = "no"
			@gasAmount = @gasAmount
			puts "You do not have a change in gas."
		end
		if $money <= 0
			puts "You have no money. The game will now end."
				abort ("The game will now end.")
		end
	end


	def shortRace
	n = rand(2)
		if n == 0
			$money = $money - 25
			@enginePercentage = @enginePercentage - 15
			@wheelsPercentage = @wheelsPercentage - 20
			@carBodyPercentage = @carBodyPercentage - 20
			@gasAmount = @gasAmount - 5
			puts "You lost! You lost $25, 15 engine percentage, 20 wheels percentage, 20 car body percentage, and lost 5 gallons of gas. Be careful in the future! Don't forget to check your car to make sure it's okay!"	
			puts "This is your money. " + $money.to_s
			puts "This is your gas. " + @gasAmount.to_s
			puts "This is your engine percentage. " + @enginePercentage.to_s
			puts "This is your wheels percentage. " + @wheelsPercentage.to_s
			puts "This is your car body percentage. " + @carBodyPercentage.to_s

		elsif n == 1
			$money = $money + 50
			@enginePercentage = @enginePercentage - 10
			@wheelsPercentage = @wheelsPercentage - 15
			@carBodyPercenage = @carBodyPercentage- 15
			@gasAmount = 16
			puts "You won! You gained $50, and only lost 10 engine percentage, 15 wheels percentage, 15 car body percentage, but you now have a full tank of gas (16 gallons)! Don't forget to check your car to make sure it's not damaged!"
			puts "This is your money. " + $money.to_s
			puts "This is your gas. " + @gasAmount.to_s
			puts "This is your engine percentage. " + @enginePercentage.to_s
			puts "This is your wheels percentage. " + @wheelsPercentage.to_s
			puts "This is your car body percentage. " + @carBodyPercentage.to_s
		
		end
		
		if $money <= 0
			puts "You have no money. The game will now end."
				abort ("The game will now end.")
		end
	end

	def mediumRace
	n = rand(3)
		if n == 0 or n == 1
			$money = $money - 30
			@enginePercentage = @enginePercentage - 20
			@wheelsPercentage = @wheelsPercentage - 25
			@carBodyPercentage = @carBodyPercentage - 25
			@gasAmount = @gasAmount - 6
			puts "You lost! You lost $30, 20 engine percentage, 25 wheels percentage, 25 car body percentage, and lost 6 gas! You should check to see if you need a car repair!"
			puts "This is your money. " + $money.to_s
			puts "This is your gas. " + @gasAmount.to_s
			puts "This is your engine percentage. " + @enginePercentage.to_s
			puts "This is your wheels percentage. " + @wheelsPercentage.to_s
			puts "This is your car body percentage. " + @carBodyPercentage.to_s
		

		elsif n == 2
			$money = $money + 75
			@enginePercentage = @enginePercentage - 20
			@wheelsPercentage = @wheelsPercentage - 20
			@carBodyPercentage = @carBodyPercentage - 25
			@gasAmount = 16
			puts "You won! You gained $75, and only lost 20 engine percentage, 20 wheels percentage, 25 car body percentage, but you now have a full tank of gas (16 gallons!) Be sure to check your car to make sure it's ready to go for another race!"
			puts "This is your money. " + $money.to_s
			puts "This is your gas. " + @gasAmount.to_s
			puts "This is your engine percentage. " + @enginePercentage.to_s
			puts "This is your wheels percentage. " + @wheelsPercentage.to_s
			puts "This is your car body percentage. " + @carBodyPercentage.to_s
		
		end

		if $money <= 0
			puts "You have no money. The game will now end."
				abort ("The game will now end.")
		end
	end


	def largeRace
	n = rand(4)
		if n == 0 or n == 1 or n == 2
			$money = $money - 40
			@enginePercentage = @enginePercentage - 25
			@wheelsPercentage = @wheelsPercentage - 25
			@carBodyPercentage = @carBodyPercentage - 30
			@gasAmount = @gasAmount - 8
			puts "You lost! You lost $40, 25 engine percentage, 25 wheels percentage, 30 car body percentage, and lost 8 gallons of gas. You should check to see if you need a car repair!"
			puts "This is your money. " + $money.to_s
			puts "This is your gas. " + @gasAmount.to_s
			puts "This is your engine percentage. " + @enginePercentage.to_s
			puts "This is your wheels percentage. " + @wheelsPercentage.to_s
			puts "This is your car body percentage. " + @carBodyPercentage.to_s
		
		elsif n == 3
			$money = $money + 100
			@enginePercentage = @enginePercentage - 20
			@wheelsPercentage = @wheelsPercentage - 20
			@carBodyPercentage = @carBodyPercentage - 25
			@gasAmount = 16
			puts "You won! You gained $100, and only lost 20 engine percentage, 20 wheels percentage, 25 car body percentage, but you now have a full tank of gas! You should check to make sure your car is in good shape before going into another race!"
			puts "This is your money. " + $money.to_s
			puts "This is your gas. " + @gasAmount.to_s
			puts "This is your engine percentage. " + @enginePercentage.to_s
			puts "This is your wheels percentage. " + @wheelsPercentage.to_s
			puts "This is your car body percentage. " + @carBodyPercentage.to_s
		
		end

		if $money <= 0
			puts "You have no money. The game will now end."
				abort ("The game will now end.")
		end
	end

	def checkCar
		puts "This is your engine percentage. " + @enginePercentage.to_s
		puts "This is your wheels percentage. " + @wheelsPercentage.to_s
		puts "This is your car body percentage. " + @carBodyPercentage.to_s
	
	
	end


	def repair
		puts "This will cost $100, would you like to continue?"
		answer = gets.chomp
		if answer == "yes"
			@enginePercentage = 100
			@wheelsPercentage = 100
			@carBodyPercentage = 100
			$money = $money - 100
			puts "Your car has been repaired. Your engine, wheels, and car body percentage are all at 100%."
			end
		if answer == "no"
			puts "There is no change."
		h.results
		end
			
		if $money <= 0
			puts "You have no money."
				abort ("The game will now end.")
		end
	end

	def quit
	puts "Would you like to quit the game?"
	answer = gets.chomp
		if answer == "yes"
			abort
		else answer == "no"
			puts "You are no longer quitting the game."
		end
	end


	def money
		return $money
	end



	def checkMoney
		puts $money.to_s
	end


	def checkCar
	if @enginePercentage <= 0 or @wheelsPercentage <= 0 or @carBodyPercentage <= 0
		abort ("Your engine percentage, wheels percentage, or car body percentage is equal or below 0. The game will now end,")
		end
	end
end
