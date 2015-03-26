require 'board'

describe Board do
  SIDE_LENGTH = 2
  let(:subject) { Board.new(SIDE_LENGTH) }
  it 'can be created to a specific size' do
    expect(subject.cells.length).to eq SIDE_LENGTH**2
  end

  it 'can add a ship at a location' do
    ship = double(:ship)
    coord = "A1"
    subject.add(coord, ship)
    expect(subject.cells[coord]).to equal ship
  end

  it 'can take a hit at a location' do
    ship = Ship.new
    coord = "A1"
    subject.add(coord, ship)
    subject.take_hit(coord)
    expect(ship).to be_sunk
  end

  it 'knows if it is a winning board' do
    ship = Ship.new
    coord = "A1"
    subject.add(coord, ship)
    subject.take_hit(coord)
    expect(subject).to be_won
  end

end
