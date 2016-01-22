require './lib/DockingStation.rb'

class Van

	attr_reader :broken_bikes

	def initialize
		@broken_bikes = []
	end

	def take_broken(docking_station)
		docking_station.bikes.select { |x| x.working? == false}
	end
end 