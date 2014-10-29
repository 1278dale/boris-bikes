require 'garage'

describe Garage do 

  it "should include bike_container module" do
  garage = Garage.new
  bike = Bike.new
  expect(garage.bikes_count?).to eq(0)
  garage.dock(bike)
  expect(garage.bikes_count?).to eq(1)
  end

  it "should accept a broken bike" do
    garage = Garage.new
    bike = Bike.new
    bike.break!
    garage.accept(bike)
    expect(garage.bikes_count?).to eq(1)
  end


end





  
