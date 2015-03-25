require 'board'

class Player
  attr_reader :board, :fleet

  def initialize
    @fleet = []
  end

  def load_ship(ship)
    fleet << ship
  end

  def load_board(board)
    fail 'Board too Small' if board_too_small(board)
    @board = board
  end

  private

  def board_too_small(board)
    fleet.map { |ship| ship.size }.max > board.size if !fleet.empty?
  end
end
