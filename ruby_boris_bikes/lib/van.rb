require_relative 'bike_container'

class Van

  include BikeContainer

  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
  end

  def move_broken(bike)
    bike.moved!
  end

  def move_fixed(bike)
    bike.moved!
  end

end