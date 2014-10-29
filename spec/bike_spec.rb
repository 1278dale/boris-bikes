require 'bike'

describe Bike do
  it "should not be broken after it's created" do
    the_bike = Bike.new
    expect(the_bike).not_to be_broken
  end
end

#another test to check that the bike can break
describe Bike do
  it "should be able to break" do
    the_bike = Bike.new
    bike.break!
    expect(the_bike).to be_broken
  end

end
