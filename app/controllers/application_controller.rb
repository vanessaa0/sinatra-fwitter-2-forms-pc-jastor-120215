require_relative "../../config/environment"

class ApplicationController < Sinatra::Application

  get '/tweets' do
    Tweet.new("Vanessa", "My first tweet! SO EXCITING OMG!!!")
    Tweet.new("Vanessa", "My second tweet! Still super exciting!!!")
    Tweet.new("Vanessa", "A third tweet! ZOMG!!!")
    Tweet.new("Vanessa", "This is so cool!")
    @tweets = Tweet.all
    erb :tweets
  end
end