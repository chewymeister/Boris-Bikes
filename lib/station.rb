class Station

    # attr_accessor 

	def initialize(amount_of_bikes,station_max)
		@amount_of_bikes = amount_of_bikes
		@station_max = station_max
	end

	def release_a_bike
		@bike
	end

	def receive_a_bike(amount_of_bikes,station_max)
		return nil if station_full?(amount_of_bikes,station_max)
		@bike
	end

	def station_full?(amount_of_bikes,station_max)
		amount_of_bikes == station_max
	end

end