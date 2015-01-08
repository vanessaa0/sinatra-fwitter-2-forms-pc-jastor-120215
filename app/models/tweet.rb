class Tweet
  attr_accessor :username, :status

  ALL_TWEETS = []

  def initialize(username, status)
    @username = user
    @status = status
    ALL << self
  end

  def self.all
    ALL_TWEETS
  end

end