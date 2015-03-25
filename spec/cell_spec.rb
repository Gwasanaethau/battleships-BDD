require 'cell'

describe Cell do
  it 'is empty' do
    expect(subject.ship).to eq false
  end
  it 'add ship' do
    ship = double(:ship)
    subject.add(ship)
    expect(subject.ship).to eq true
  end
end
