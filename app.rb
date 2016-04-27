require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post "/names" do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    $game = Game.new($player1, $player2)
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2_points = $player2.points
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    $game.attack($player2)
    @player2_points = $player2.points
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
