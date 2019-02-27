require 'rubygems'
require 'sinatra'

configure do
  enable :sessions
end

get '/' do
	session[:identity] ? ('Hello ' + session[:identity]) : 'Hello, World<br>' + '<a href="/login">Sign in to system</a>'
end

get '/login' do
	'<form action="/login" method="POST">
	Enter your name : <input type="text" name="identity">
	<button>Sign In</button>
	</form>'
end

post '/login' do
	session[:identity] = params['identity']
	redirect to '/'
end
