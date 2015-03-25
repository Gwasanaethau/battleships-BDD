require 'cell'

describe Cell do
  it 'is empty' do
    expect(subject.ship).to eq nil
  end
  it 'add ship' do
    ship = double(:ship)
    subject.add(ship)
    expect(subject.ship).to equal ship
  end
  it 'takes a hit' do
    # ship = double(:ship, sunk: false)
    # allow(ship).to receive(:sink) { ship.sunk = true }
    ship = Ship.new
    subject.add(ship)
    subject.take_hit
    expect(ship).to be_sunk
  end
end
