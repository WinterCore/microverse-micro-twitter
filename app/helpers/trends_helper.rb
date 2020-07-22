module TrendsHelper
  def latest_trends
    Trend
      .joins('INNER JOIN trends_tweets ON trends_tweets.trend_id = trends.id')
      .select('trends.*, COUNT(trends_tweets) as count')
      .group('trends.id')
      .order('count DESC')
      .limit(10)
  end
end
