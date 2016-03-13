class TweetRepository
  include Repository

  class << self
    def find(id)
      @tweet = TweetDao.find(id)
      @user  = UserDao.find(id)
      @likes = LikeDao.where(tweet_id: tweet)
      @parent_tweet = TweetDao.find_by(id: @tweet.parent_tweet_id)

      TweetEntity.new(tweet_params)
    end

    private
    def tweet_params
      {
          user: @user,
          like_num: @likes.size,
          parent_tweet: ParentTweetEntity.new(@parent_tweet.permitted_attributes(%i(id, content)))
      }
    end
  end
end