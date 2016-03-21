class TweetContents < ValueObject
  def initialize(tweet_id=nil, text)
    @tweet_id = tweet_id
    @text = text
  end

  def valid?
  end
end