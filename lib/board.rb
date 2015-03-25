# Shhhhhhhhh
class Board
  attr_accessor :ship
  attr_reader :cells

  def initialize
    @cells = { "A1": nil }
  end

  def add(coord, ship)
    @cells[coord] = ship
  end

  def take_hit(coord)
    if @cells[coord].is_a? Ship
      @cells[coord].sink
    else
      @cells[coord] = :miss
    end
  end
end