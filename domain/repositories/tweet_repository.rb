class TweetRepository < Repository
  set_table_name 'tweets'

  class << self
    def order_by_created_at
      all.sort_by do |t|
        t.created_at
      end
    end
  end
end
