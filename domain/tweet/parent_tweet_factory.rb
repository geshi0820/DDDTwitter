class ParentTweetFactory
  class << self
    def call(tweet)
      ParentTweetEntity.new(tweet.permitted_attributes(%i(id, content)))
    end
  end
end