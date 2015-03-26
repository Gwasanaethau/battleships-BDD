require 'capybara/rspec'

feature 'board can be hit at a location and sink a ship or miss' do
  let(:board) { Board.new(2) }
  let(:ship) { Ship.new }

  scenario 'a board can be created to a specific size' do
    side_length = 2
    board = Board.new(side_length)
    expect(board.cells.length).to eq side_length**2
  end

  scenario 'add ship to a specific cell' do
    coord = "A1"
    board.add(coord, ship)
    expect(board.cells[coord]).to equal ship
  end

  scenario 'miss a ship at a location' do
    coord = "A1"
    board.take_hit(coord)
    expect(board.cells[coord]).to eq :miss
  end

  scenario 'sink a ship at a location' do
    coord = "A1"
    board.add(coord, ship)
    board.take_hit(coord)
    expect(ship).to be_sunk
  end

  scenario 'there can be a winning board' do
    coord = "A1"
    board.add(coord, ship)
    board.take_hit(coord)
    expect(board).to be_won
  end
end
