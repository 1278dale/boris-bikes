require_relative '.../lib/boris_bikes'

describe Bike do 

	let(broken_bike) { Bike.new.break! }

	#before(:each) do
		broken_bike.break
	end


	it 'is not broken when created' do
		new_bike = Bike.new_bike
		expect(new_bike).not_to be_broken
		expect(new_bike.broken?).to be false
	end



it 'can break' do
	
	expect(broken_bike).to be_broken
end

it 'can be fixed' do
	broken_bike = Bike.new_bike
	broken_bike.break!
	broken_bike.fix!
	expect(broken_bike).not_to be_broken
end
end



