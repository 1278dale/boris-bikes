# be able to accept bikes
# be able to release bikes
# have a capacity limit
# if bike is broken, should not release it(only to van)
# must know how many bikes it has
require "dockingstation"

describe DockingStation do 

let(:bike) {Bike.new}
let(:station) { DockingStation.new(20)}

def fill_station(station)
  20.times { station.dock(Bike.new)}
end

  it "should be able to accept bikes" do
    expect(station.bike_count?).to eq(0)
    station.dock(bike)
    expect(station.bike_count?).to eq(1)
  end

  it "should be able to release bikes" do
    station.dock(bike)
    station.release(bike)
    expect(station.bike_count?).to eq(0)
  end

  it "should know when the station is full" do
    expect(station).not_to be_full
  20.times { station.dock(Bike.new) }
  expect(station).to be_full
  end

  it "should not accept a bike when its full" do
    20.times {station.dock(Bike.new)}
    expect(station.bike_count?).to eq(20)
    expect(lambda {station.dock(bike)}).to raise_error(RuntimeError)
end

  it "should provide a list of available bikes" do
    working_bike, broken_bike = Bike.new, Bike.new
    station.dock(working_bike)
    broken_bike.break!
    station.dock(broken_bike)
    expect(station.available_bikes).to eq([working_bike])
  end
end
