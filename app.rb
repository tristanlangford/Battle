require 'sinatra/base'
require 'sinatra'

class Battle < Sinatra::Base

  enable :sessions

  get "/" do
    "Testing infrastructure working!"
    erb (:index)
  end

  post "/names" do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect "/play"
  end

  get "/play" do
    @player2_hp = 100
    erb(:play)
  end

  run! if app_file == $0
end
