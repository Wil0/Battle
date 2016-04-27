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
    # $player1 = Player.new(params[:player1])
    # $player2 = Player.new(params[:player2])
    # $game = Game.new($player1, $player2)
    redirect '/play'
  end

  get '/play' do
    # @player1 = $game.player1.name
    # @player2 = $game.player2.name
    # @player2_points = $game.player2.points
    @game = $game
    erb(:play)
  end

  get '/attack' do
    # @player1 = $game.player1.name
    # @player2 = $game.player2.name
    @game = $game
    @game.attack(@game.player2)
    # @player2_points = $game.player2.points
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
