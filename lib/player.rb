require 'board'

class Player
  attr_reader :board, :fleet
  def initialize
    @board = Board.new
    @fleet = []
  end

  def load_ship(ship)
    @fleet << ship
  end
end
