require './lib/van'


class Garages

	attr_reader :fixed_bikes

	def initialize
		@fixed_bikes = []
	end

	def to_fix(broken_bikes)
		broken_bikes.map {|x| x = true}.each do |x|
			@bikes << x
		end
	end
end
