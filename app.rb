require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    # 'Hello Battle world!'
    erb(:index)
  end

  post "/names" do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    # session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2_points = $player2.points
    # @player1 = session[:player1]
    # @player2 = session[:player2]
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    $player1.attack($player2)
    @player2_points = $player2.points
    # @player1 = session[:player1]
    # @player2 = session[:player2]
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
