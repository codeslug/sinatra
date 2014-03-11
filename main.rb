require 'rubygems'
require 'sinatra'

get '/' do
  @title = "Home"
  erb :home
end

get '/frank' do
  @title = "My Way"
  erb :frank
end

post '/' do
	@title = "You have submitted a form! (inside main.rb)"
	@reversed_text = params[:phrase].reverse
	erb :reverse
end

get '/:phrase' do
	@title = "Here's your Reversed Text:"
	@reversed_text = params[:phrase].reverse
	erb :reverse
end

# I am only inside the development branch !! 