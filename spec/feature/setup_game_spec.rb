require 'capybara/rspec'

feature 'players can set up the game' do
  let(:player) { Player.new }
  let(:board) { Board.new }

  scenario 'a player needs a board' do
    expect(player.board).to be_a Board
  end

  scenario 'a player has a range of ship sizes' do
    ships = [ Ship.battleship, Ship.carrier, Ship.patrol_boat, Ship.submarine, Ship.destroyer ]
    ships.each { |ship| player.load_ship(ship) }
    player.fleet.each_with_index do |ship, index|
      expect(ship).to equal ships[index]
    end
  end

  xscenario 'board is bigger than all the ships'

  xscenario 'players can place ships on the board in a certain direction' do
    expect
  end

  xscenario 'the ships must not overlap'
end

# xfeature 'the players can play the game'
#
# xfeature 'the players can win the game'
#
# xfeature 'more than one player can play the game'
