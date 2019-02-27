require 'rubygems'
require 'sinatra'

configure do
  enable :sessions
end

get '/' do
	'Hello, World'
end
