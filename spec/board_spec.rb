require 'board'

describe Board do
  it 'is empty' do
    expect(subject.ship).to eq nil
  end
  it 'add ship' do
    ship = double(:ship)
    coord = "A1"
    subject.add(coord, ship)
    expect(subject.cells[coord]).to equal ship
  end
  it 'takes a hit' do
    # ship = double(:ship, sunk: false)
    # allow(ship).to receive(:sink) { ship.sunk = true }
    ship = Ship.new
    coord = "A1"
    subject.add(coord, ship)
    subject.take_hit(coord)
    expect(ship).to be_sunk
  end
end