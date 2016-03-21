class User < Entity
  def tweet(tweet_contents)
    tweet_service = TweetService.initialize(self, tweet_contents)
    tweet_service.regist!
    tweet_service.instance
  end

  def account_update(user_info)
    account_update_service = CreateUserAccountService.new(self, user_info)
    account_update_service.regist!
    account_update_service.instance
  end

  def reply(tweet_id, tweet_contents)
    tweet_service = TweetService.initialize(user: self, tweet_id: tweet_id, tweet_contents: tweet_contents)
    tweet_service.regist!
    tweet_service.instance
  end

  def like(tweet_id)
    LikeRepository.store(self, tweet_id)
  end

  def retweet(tweet)
  end

  def tweet_delete
  end

  class << self
    def register(user_info)
      UserRepository.create(user_info)
    end
  end
end