class Tweet
  attr_accessor :user, :status

  ALL = []

  def initialize(user, status)
    @user = user
    @status = status
    ALL << self
  end

  def self.all
    ALL
  end

end