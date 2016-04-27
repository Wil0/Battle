require 'player'

describe Player do
  let(:player) { described_class.new('Player1') }

  it 'returns the player name' do
    expect(player.name).to eq 'Player1'
  end

  it 'player starts with 100 points' do
    expect(player.points).to eq 100
  end

  it 'can attack the other palayer' do
    expect(player).to respond_to(:attack).with(1).argument
  end

  it 'reduces player HP' do
    expect { player.receive_damage }.to change{ player.points }.by(-10)
  end
end
