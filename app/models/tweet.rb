# Our models represent the logic of our application. Right now, we have a class of Tweet to represent our posts.
class Tweet
  ALL_TWEETS = [] #our tweet class has a variable called 'ALL_TWEETS'. This variable belongs to the whole class, not instances of the class. 

  def initialize(username, status) #Each tweet will initialize with a username and a status. 
    @username = username
    @status = status
    ALL_TWEETS << self #Every time a new tweet is created, it's added into the ALL_TWEETS array. In the initialize method, self refers to the tweet that was newly created. 
  end

  # Here we have reader methods for our username and status. 
  def username
    @username
  end

  def status
    @status
  end


# Here, self indicates that this method will be called on the class of Tweet, not on the new instances on tweets. Example: @tweets = Tweet.all will make an instance variable called @tweets and set it equal to the ALL_TWEETS array

  def self.all 
    ALL_TWEETS
  end
end