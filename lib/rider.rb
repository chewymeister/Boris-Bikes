class Rider

	def rent_a_bike(station)
		@bike = station.release_a_bike
	end

	def dock_a_bike(station)
		station.receive_a_bike
	end

	def has_a_bike?
       !@bike.nil?
    end

end