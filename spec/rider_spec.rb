require 'rider'


describe Rider do
	let(:rider){Rider.new}

	it 'can rent a bike from a station' do 
		station = double :station
		station.should_receive(:release_a_bike)

		rider.rent_a_bike(station)
	end

	it 'has a bike after renting'do
		station = double(:station,{release_a_bike: :bike})
		rider.rent_a_bike(station)
		expect(rider).to have_a_bike
	end


	it 'allow to drop off a bike to a station' do
		station = double :station
		station.should_receive(:receive_a_bike)
		rider.dock_a_bike(station)
	end


end