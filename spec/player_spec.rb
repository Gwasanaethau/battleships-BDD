require 'player'

describe Player do
  it 'has a board' do
    expect(subject.board).to be_a Board
  end

  it 'has ships' do
    ship = double :ship
    subject.load_ship(ship)
    expect(subject.fleet).to include ship
  end
end
