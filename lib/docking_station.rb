require './lib/bike'

class DockingStation

attr_reader :bikes, :capacity


DEFAULT_CAPACITY=20

	def initialize(capacity=DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end

	def release_bike(bike)
		fail "No bikes available" if empty?
		fail "This bike is broken." if bike.working? == false
		@bikes.delete(bike)
		bike
	end

	def dock(bike)
		fail 'Docking station full' if full?
		@bikes.push(bike)
	end

	private

	def full?
		bikes.count >= capacity ? true : false
	end

	def empty?
		bikes.count <= 0 ? true : false
	end
end
