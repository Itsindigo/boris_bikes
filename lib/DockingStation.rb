<<<<<<< HEAD
require_relative 'Bike.rb'

class DockingStation

	attr_reader :bikes
	attr_reader :capacity

	DEFAULT_CAPACITY = 20

	def initialize(capacity = DEFAULT_CAPACITY)
=======
require './lib/bike.rb'

class DockingStation

attr_reader :bikes, :capacity


DEFAULT_CAPACITY=20

	def initialize(capacity=DEFAULT_CAPACITY)
>>>>>>> de225b1de1e398d18cdb9adc0ca3dc433aa5e68a
		@bikes = []
		@capacity = capacity
	end

<<<<<<< HEAD
	def release_bike
		fail "No Bike Error" if empty?
		@bikes.pop
		@bike
	end

	def dock(bike)
		raise "Dock Full" if full?
		@bike = bike
		@bikes << bike
		@bike
=======
	def release_bike(bike)
		fail "No bikes available" if empty?
		fail "This bike is broken." if bike.working? == false
		@bikes.delete(bike)
		bike
	end

	def dock(bike)
		fail 'Docking station full' if full?
		@bikes.push(bike)

>>>>>>> de225b1de1e398d18cdb9adc0ca3dc433aa5e68a
	end

	private

	def full?
<<<<<<< HEAD
		bikes.count >= capacity ? true : false
	end

	def empty?
		bikes.count <= 0 ? true : false
	end

=======
		@bikes.count >= capacity
	end

	def empty?
		@bikes.empty?
	end
>>>>>>> de225b1de1e398d18cdb9adc0ca3dc433aa5e68a
end
