class Tweet
  attr_accessor :username, :status

  ALL = []

  def initialize(username, status)
    @username = user
    @status = status
    ALL << self
  end

  def self.all
    ALL
  end

end