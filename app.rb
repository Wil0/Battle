require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post "/names" do
    $game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_being_attacked)
    erb(:attack)
  end

  post '/attack' do
    @game = $game
    @game.switch_turns
    @game.attack(@game.player_being_attacked)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
