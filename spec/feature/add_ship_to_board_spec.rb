require 'capybara/rspec'

feature 'cell and ship to be hit' do
  let(:cell) { Cell.new }
  let(:ship) { Ship.new }
  scenario 'add ship to a cell' do
    cell.add(ship)
    expect(cell.ship).to equal ship
  end
  scenario 'cell to be hit' do
    cell.add(ship)
    cell.take_hit
    expect(ship).to be_sunk
  end
end
