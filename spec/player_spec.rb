require 'player'

describe Player do
  let(:board) { double :board }
  before { allow(board).to receive(:size){3} }

  let(:ship) { double :ship }

  it 'can load a board' do
    subject.load_board(board)
    expect(subject.board).to equal board
  end

  it 'has ships' do
    subject.load_ship(ship)
    expect(subject.fleet).to include ship
  end

  it 'has a board that is bigger than the ships' do
    allow(ship).to receive(:size){5}
    subject.load_ship(ship)
    expect { subject.load_board(board) }.to raise_error 'Board too Small'
  end
end
