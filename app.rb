require 'sinatra/base'
require 'sinatra'

class Battle < Sinatra::Base

  # set :root, File.dirname(__FILE__)

  get "/" do
    "Testing infrastructure working!"
    erb (:index)
  end

  post "/names" do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:play)
  end

  run! if app_file == $0
end
