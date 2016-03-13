class TweetEntity
  LIMIT_NUM_OF_TWEET_CHARACTERS = 140

  attr_accessor %i(content, like_num, user, created_at)

  def initialize(id:, content:, like_num:, user:, created_at:, parent_tweet: nil, child_tweets: nil)
    @id = id
    @content = content
    @like_num = like_num
    @user = user
    @created_at = created_at
    @parent_tweet = parent_tweet
    @child_tweets = child_tweets
  end

  def content_valid?
    @content.size <= LIMIT_NUM_OF_TWEET_CHARACTERS
  end
end