require 'station'

describe Station do
	let(:station){Station.new(4)}

	it 'releases a bike' do
		bike = double(:bike,{condition?: true})
		expect(station.release_a_bike(@bike_list,bike)).to eq 'bike'
	end

	it 'allows a rider to rent a bike when bike is available' do
		bike = double(:bike,{condition?: true})
		expect(station.release_a_bike(@bike_list,bike)).to eq 'bike'
	end

	it 'forbids a rider to rent a bike when bike is broken' do
		bike = double(:bike,{condition?: false})
		expect(station.release_a_bike(@bike_list,bike)).to be_nil
	end

	it 'checks if station is full' do
		expect(station.station_full?).to be_true
	end

	it 'forbids rider or van to dock bike when full' do
		expect(station.receive_a_bike).to be_nil
	end

	it'receive a bike from a rider when the in a good condition'do
	end

    it'receive some bikes from van'do
    end 

	it 'collect all broken bikes'do


end 

	it 'let van take the broken bikes away' do
	end


	# it 'forbids van to dock bike when full' do
	# 	expect
		
	# end
# it 'knows that a rider takes a bike away' do
# 	it 'knows that a rider returns a bike'do
# end
end