require_relative '../../config/environment'
require './app/models/tweet'

class ApplicationController < Sinatra::Base

  get '/tweets' do
    Tweet.new("Vanessa", "My first tweet! SO EXCITING OMG!!!")
    Tweet.new("Vanessa", "My second tweet! Still super exciting!!!")
    Tweet.new("Vanessa", "A third tweet! ZOMG!!!")
    Tweet.new("Vanessa", "This is so cool!")
    @tweets = Tweet.all
    erb :tweets
  end

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
end