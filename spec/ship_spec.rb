require 'ship'

describe Ship do
  it 'creates a ship' do
    expect(subject).to be_a Ship
  end
  it 'can be sunk' do
    subject.sink
    expect(subject).to be_sunk
  end
end
