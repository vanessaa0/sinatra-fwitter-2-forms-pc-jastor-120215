# Our controller's job is to take information from the models and pass it into the views. 

#First, we load up all of the code in the environment file and tweet model. 

require './config/environment'
require './app/models/tweet'

class ApplicationController < Sinatra::Base

  configure do
    # this configure block sets some defaults for our application - this lets Sinatra know to look in our public folder for stylesheets and images, and our views for erb files. 
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # the block below defines what will happen when a user goes to our home page
  get '/' do 
    # First, we hard code some new instances of our tweet class. Remember, these will get saved temporarily by the ALL_TWEETS array. 
    Tweet.new("Vanessa", "My first tweet! SO EXCITING OMG!!!")
    Tweet.new("Vanessa", "My second tweet! Still super exciting!!!")
    Tweet.new("Vanessa", "A third tweet! ZOMG!!!")
    Tweet.new("Vanessa", "This is so cool!")
    # Using the all method that we created, we can store all of the tweets into an instance variable. 
    @tweets = Tweet.all
    erb :index #this will display whatever is in the file called index.erb in the 'app/views' directory
  end

end
