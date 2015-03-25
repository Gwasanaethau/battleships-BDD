require 'ship'

describe Ship do
  it 'can create a battleship' do
    ship = Ship.battleship
    expect(ship).to be_a Ship
  end
end
