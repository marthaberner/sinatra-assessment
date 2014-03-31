require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/products/new' do
    erb :products_new
  end
end