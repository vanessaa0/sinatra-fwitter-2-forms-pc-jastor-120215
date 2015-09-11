class Tweet
  ALL_TWEETS = [] 

  attr_accessor :username, :status
  
  def initialize(username, status)
    @username = username
    @status = status
    ALL_TWEETS << self 
  end

  def self.all 
    ALL_TWEETS
  end
  
end