require 'capybara/rspec'

feature 'players can set up the game' do
  let(:player) { Player.new }
  let(:board) { Board.new }

  scenario 'a player needs a board' do
    expect(player.board).to be_a Board
  end

  scenario 'a player has a range of ship sizes' do
    ship = Ship.battleship
    expect(ship.size).to eq 4
    player.load_ship(ship)
    expect(player.fleet).to equal [ship]
  end

  xscenario 'board is bigger than all the ships'
  xscenario 'players can place ships on the board in a certain direction'
  xscenario 'the ships must not overlap'
end

# xfeature 'the players can play the game'
#
# xfeature 'the players can win the game'
#
# xfeature 'more than one player can play the game'
