require 'capybara/rspec'

feature 'add ship to a board and hit it' do
  scenario 'add ship to a cell' do
    cell = Cell.new
    ship = Ship.new
    expect(cell.add(ship)).to eq true
  end
end
