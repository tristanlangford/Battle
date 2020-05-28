require 'sinatra/base'
require 'sinatra'

class Battle < Sinatra::Base

  set :root, File.dirname(__FILE__)

  get "/" do
    "hello battle"
  end

end
