require 'bike'

describe Bike do
  it "should not be broken after it's created" do
    the_bike = Bike.new
    expect(the_bike).not_to be_broken
  end
end

