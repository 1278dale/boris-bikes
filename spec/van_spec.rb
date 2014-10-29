require 'van'

describe Van do

it "class should container bike_container module" do
  van = Van.new
  bike = Bike.new
expect(van.bikes_count?).to eq(0)
van.dock(bike)
expect(van.bikes_count?).to eq(1)
  end
end
