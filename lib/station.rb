require_relative './bike.rb'

class Station
 
 attr_reader :station_max

	def initialize(station_max)
		@station_max = station_max
		@bike_list = ['bike','bike','bike','bike']
	end
	def release_a_bike(bike_list,bike)
		# bike=Bike.new
		if bike.condition?
		@bike_list.pop 
		else
			return nil

		end
	end
	def receive_a_bike
		amount_of_bikes=@bike_list.count
		return nil if station_full?
		@bike
	end
	def station_full?
		amount_of_bikes=@bike_list.count
		amount_of_bikes == @station_max
	end
end
   




    # attr_accessor :bike