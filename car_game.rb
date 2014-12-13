require './car_class.rb'

#write a program that uses the class

puts "What is your name? You are going to be the main character."

name = gets.chomp

puts "What type of car and color would you like? Please enter one at a time in the order of car and then color."

car = gets.chomp
color = gets.chomp

h = Human.new(name)

c = Car.new(car,color)

puts "Now that you have created your car, we can get into the fun stuff! You can do a small race, a medium race, or a large race, but keep in mind that the higher the difficulty, the higher the risk but the higher the reward. You can also repair your car or refill your tank, as well as check what condition your car is in. You are also able to check your money amount."

h.commands

while h.money.to_f >= 1
h.checkCar
puts "What would you like to do?"
answer = gets.chomp
		if answer == "h.repair"
			h.repair
		elsif answer == "h.gasRefill"
			h.gasRefill
		elsif answer == "h.shortRace"
			h.shortRace
		elsif answer == "h.mediumRace"
			h.mediumRace
		elsif answer == "h.largeRace"
			h.largeRace
		elsif answer == "h.checkMoney"
			h.checkMoney
		elsif answer == "h.checkCar"
			h.checkCar
		elsif answer == "h.repair"
			h.repair
		elsif answer == "h.quit"
			h.quit
		elsif answer == "h.commands"
			h.commands
		elsif $money.to_f <= 0
			abort ("You have run out of money. The game will now end.")
		end
		h.checkCar
end
