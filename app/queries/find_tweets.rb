class FindTweets
  attr_accessor :initial_scope

  def initialize(initial_scope)
    @initial_scope = initial_scope
  end

  def call(params)
    scoped = filter_by_trend(@initial_scope, params[:trends])
    scoped = paginate(scoped, params[:page])
    scoped
  end

  private

  def paginate(scoped, page = 1)
    scoped.page(page)
  end

  def filter_by_trend(scoped, trends = nil)
    if trends
      trends = [trends] unless trends.is_a? Array
      scoped.where("EXISTS (SELECT FROM trends_tweets WHERE\
                   tweets.id = trends_tweets.tweet_id AND trends_tweets.trend_id IN (#{trends.join(',')}))")
    else
      scoped
    end
  end
end
