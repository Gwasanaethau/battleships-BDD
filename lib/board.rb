# Shhhhhhhhh
class Board
  ALPHABET = "ABCDEFGHI"
  attr_accessor :ship
  attr_reader :cells

  def initialize(side_length)
    @cells = {}
    create_cells_hash(side_length)
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

  def won?
    all_ships.empty?
  end

  private

  def create_cells_hash(side_length)
    (1..side_length).each do |number|
      (0...side_length).each do |letter|
        @cells["#{ALPHABET[letter]}#{number}"] = nil
      end
    end
  end

  def all_ships
    cell_values = @cells.values
    cell_values.keep_if { |value| value.is_a? Ship }
    cell_values.keep_if { |ship| !ship.sunk? }
  end

end
