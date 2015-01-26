require 'sinatra'

get '/' do
  'hello!'
end

get '/secret' do
  erb :index
end