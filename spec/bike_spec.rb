require 'bike'


describe Bike do

let(:bike) {Bike.new}


  it "should not be broken when created" do
  expect(bike.broken?).to be false
  end

  it "should be able to break" do
  bike.break!
  expect(bike.broken?).to be true
end

  it "should be able to fix the bike" do
    bike.break!
    bike.fix!
    expect(bike.broken?).to be false
  end

end

# expect bike to not be broken when created

# be able to break the bike

# be able to fix the bike

