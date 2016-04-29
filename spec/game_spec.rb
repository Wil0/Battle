require 'game'

describe Game do
  let(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:player, receive_damage: true) }
  let(:player2) { double(:player, receive_damage: true) }
  let(:dead_player2) {double(:player, receive_damage: true, points: 0)}

  it 'has a first player' do
    expect(game.player1).to eq player1
  end

  it 'has a second player' do
    expect(game.player2).to eq player2
  end

  it 'can attack the other player' do
    expect(game).to respond_to(:attack).with(1).argument
  end

  it 'player 1 goes first' do
    expect(game.current_player).to eq player1
  end

  it 'shows who is being attacked' do
    expect(game.player_being_attacked).to eq player2
  end

  it 'switches turns' do
    game.switch_turns
    expect(game.current_player).to eq player2
  end

  context 'when game is over' do
    let(:end_game) {described_class.new(player1, dead_player2)}
    it 'returns true' do
      expect(end_game).to be_game_over
    end
  end

  context 'when game is not over' do
    it 'it returns false' do
      allow(player2).to receive(:points).and_return 100
      expect(game).not_to be_game_over
    end
  end


end
