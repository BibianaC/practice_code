require_relative 'bike_container'

class Van

  include BikeContainer

  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
  end

  def move!(bike)
    bike.moved!
  end

end