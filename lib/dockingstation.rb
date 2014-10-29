class DockingStation
  def initialize(capacity)
    @capacity = capacity
    @bike = []
  end
# haven't included options

  def bike_count?
    @bike.count
  end

def dock(bike)
  raise "Station is full" if full?
  @bike << bike
end

def release(bike)
  @bike.delete(bike)
  end

  def full?
    bike_count? == @capacity
  end

  def available_bikes
    @bike.reject {|bike| bike.broken?}
  end
end