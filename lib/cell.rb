class Cell
  attr_reader :ship
  def initialize
    @ship = false
  end
  def add(ship)
    @ship = true
  end
end
