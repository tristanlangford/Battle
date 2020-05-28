require 'sinatra/base'
require 'sinatra'

class Battle < Sinatra::Base

  # set :root, File.dirname(__FILE__)

  get "/" do
    "Testing infrastructure working!"
    erb (:index)
  end

  post "/names" do
    @name = params[:player1]
    erb(:play)
  end

  run! if app_file == $0
end
