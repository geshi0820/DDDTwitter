class TimelineService
  def initialize(user)
    @user = user
  end

  def instance(user)
    user_follow_ids = FollowRepository.where(follower: user).ids
    tweets = TweetRepository.where(user_id: user_follow_ids)
    tweets.order_by_created_at
  end

  alias_method :reload, :instance
end