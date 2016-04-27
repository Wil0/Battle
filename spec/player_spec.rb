require 'player'

describe Player do
  let(:player) { described_class.new('Player1') }

  it 'returns the player name' do
    expect(player.name).to eq 'Player1'
  end
end
