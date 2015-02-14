module BikeContainer

  DEFAULT_CAPACITY = 10

  def bikes
    @bikes ||= []
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)
    @capacity = value
  end

  def bike_count
    bikes.count
  end

  def dock!(bike)
    raise 'Station is full' if full?
    raise 'It only accepts bikes' if !bike
    bikes << bike
  end

  def release!(bike)
    raise 'It is empty' if bike_count == 0
    bikes.delete(bike)
  end

  def full?
    bike_count == capacity
  end

  def available_bikes
    bikes.reject {|bike| bike.broken? }
  end

  def unavailable_bikes
    bikes.select {|bike| bike.broken?}
  end
end