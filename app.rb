require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  # enable :sessions

  get '/' do
    erb(:index)
  end

  post "/names" do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    Game.set_instance(player1, player2)
    @game = Game.instance
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  get '/first_attack' do
    @game = Game.instance
    @game.attack(@game.player_being_attacked)
    erb(:attack)
  end

  get '/attack' do
    @game = Game.instance
    @game.switch_turns
    @game.attack(@game.player_being_attacked)
    @game.game_over? ? erb(:lose_game) : erb(:attack)
  end

  get '/lose_game' do
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
