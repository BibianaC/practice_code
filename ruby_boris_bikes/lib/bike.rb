class Bike

  def initialize
    fix!
  end

  def broken?
    @broken
  end

  def break!
    @broken = true
  end

  def fix!
    @broken = false
  end

  def moved?
    @moved
  end

  def moved!
    @moved = true
  end

end