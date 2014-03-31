require 'sinatra/base'

class App < Sinatra::Base

  PRODUCTS = []

  get '/' do
    erb :index, :locals => {:product => PRODUCTS}
  end

  get '/products/new' do
    erb :products_new
  end

  post '/' do
    PRODUCTS << params[:product]
    redirect '/'
  end
end