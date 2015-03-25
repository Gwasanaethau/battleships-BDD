require 'ship'

describe Ship do
  it 'can create a battleship' do
    ship = Ship.battleship
    expect(ship).to be_a Ship
    expect(ship.size).to eq 4
  end

  it 'can create a carrier' do
    ship = Ship.carrier
    expect(ship).to be_a Ship
    expect(ship.size).to eq 5
  end

  it 'can create a patrol boat' do
    ship = Ship.patrol_boat
    expect(ship).to be_a Ship
    expect(ship.size).to eq 1
  end

  it 'can create a submarine' do
    ship = Ship.submarine
    expect(ship).to be_a Ship
    expect(ship.size).to eq 2
  end

  it 'can create a destroyer' do
    ship = Ship.destroyer
    expect(ship).to be_a Ship
    expect(ship.size).to eq 3
  end
end
