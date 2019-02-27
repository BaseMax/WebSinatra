require 'rubygems'
require 'sinatra'

configure do
  enable :sessions
end

get '/' do
	'Hello, World'
end

get '/login' do
	'--- Login Form ---'
end

post '/login' do
	session[:identity] = params['username']
	redirect to '/'
end
