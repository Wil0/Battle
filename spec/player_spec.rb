require 'player'

describe Player do
  let(:player) { described_class.new('Player1') }

  it 'returns the player name' do
    expect(player.name).to eq 'Player1'
  end

  it 'player starts with 100 points' do
    expect(player.points).to eq 100
  end

  it 'reduces player HP' do
    allow(Kernel).to receive(:rand).and_return(10)
    expect { player.receive_damage }.to change{ player.points }.by(-10)
  end

  # it 'shows HP points lost' do
  #   allow(Kernel).to receive(:rand).and_return(10)
  #   expect(player.damaged_received).to eq 10
  # end
end
