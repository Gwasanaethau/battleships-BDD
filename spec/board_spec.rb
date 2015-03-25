require 'board'

describe Board do
  let(:subject) { Board.new(2) }
  it 'can be created to a specific size' do
    side_length = 2
    board = Board.new(side_length)
    expect(board.cells.length).to eq side_length**2
  end

  it 'can add a ship at a location' do
    ship = double(:ship)
    coord = "A1"
    subject.add(coord, ship)
    expect(subject.cells[coord]).to equal ship
  end

  it 'take a hit at a location' do
    ship = Ship.new
    coord = "A1"
    subject.add(coord, ship)
    subject.take_hit(coord)
    expect(ship).to be_sunk
  end

end
