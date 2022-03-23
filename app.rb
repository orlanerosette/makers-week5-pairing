require 'sinatra'
# require 'sinatra/base'
require 'sinatra/reloader' if development?

  get '/' do
    'Hello world!'
  end
  
  get '/random-cat' do
    @name = ["Amigo", "Misty", "Almond"].sample
    erb(:index)
  end

  get '/named-cat' do
    @name = params[:name]
    erb(:index)
  end



