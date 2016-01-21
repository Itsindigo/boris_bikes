require './lib/DockingStation.rb'
require './lib/Van.rb'
require './lib/bike.rb'

class Garages

	attr_reader :fixed_bikes

	def initialize
		@bikes = []
	end

	def to_fix(broken_bikes)
		broken_bikes.map {|x| x = true}.each do |x|
			@bikes << x
		end
	end
end