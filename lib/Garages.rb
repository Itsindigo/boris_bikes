require './lib/DockingStation.rb'
require './lib/Van.rb'
require './lib/bike.rb'

class Garages

	attr_reader :garage

	def initialize
		@garage = []
	end

	def to_fix(broken_bikes)
		broken_bikes.map {|x| x == true}
	end
end