require 'sinatra'
# require 'sinatra/base'
require 'sinatra/reloader' if development?

  get '/' do
    'Hello world!'
  end
  
  get '/secret' do
    'This is not a secret.'
  end
  
  # get '/orlane' do
  #   'Hello Orlane!'
  # end
  
  get '/testing' do
    'Does this work?'
  end

  get '/cat' do
    @name = ["Amigo", "Misty", "Almond"].sample
    erb(:index)
  end
  
  get '/:name' do
    "Hello #{params['name']}!"
  end
 
# class MyApp < Sinatra::Base
  # configure :development do
  #   register Sinatra::Reloader
  # end
# end


