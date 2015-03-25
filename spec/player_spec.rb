require 'player'

describe Player do
  it 'has a board' do
    expect(subject.board).to be_a Board
  end
end
