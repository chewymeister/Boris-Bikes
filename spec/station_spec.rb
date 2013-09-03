require 'station'

describe Station do
	let(:station){Station.new(3,5)}
	

	it 'allows a rider to rent a bike' do
		bike = double(:bike,{condition?: true})
		expect(bike.condition?).to be_true
		# station.should_receive(release_a_bike)
	end

	it 'forbids a rider to rent a bike when bike is broken' do
		bike = double(:bike,{condition?: false})
		expect(bike.condition?).to be_false
	end

	it 'checks if station is full' do
		expect(station.station_full?(5,5)).to be_true
	end

	it 'forbids rider or van to dock bike when full' do
		expect(station.receive_a_bike(5,5)).to be_nil
	end

	


	# it 'forbids van to dock bike when full' do
	# 	expect
		
	# end
# it 'knows that a rider takes a bike away' do
# 	it 'knows that a rider returns a bike'do
# end
end