class TweetService
  def initialize(user: user, tweet_id: tweet_id, tweet_contents: tweet_contents)
    @user = user
    @tweet = tweet_id
    @tweet_contents = tweet_contents
  end

  def regist!
    if @tweet_contents.valid?
      @tweet = TweetRepository.store!(@user, @tweet_contents)
    end
  end

  def instance
    @tweet
  end
end
