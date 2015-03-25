# Shhhhhhhhh
class Cell
  attr_accessor :ship

  def initialize
    @ship = nil
  end

  def add(ship)
    @ship = ship
  end

  def take_hit
    @ship.sink
  end
end
