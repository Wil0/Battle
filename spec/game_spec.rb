require 'game'

describe Game do
  let(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:player, receive_damage: true) }
  let(:player2) { double(:player, receive_damage: true) }

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


end
