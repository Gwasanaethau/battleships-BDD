require 'board'

describe Board do
  it 'has a size' do
    board = Board.new(3)
    expect(board.size).to eq 3
  end
end
