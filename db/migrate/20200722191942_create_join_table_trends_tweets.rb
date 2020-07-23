class CreateJoinTableTrendsTweets < ActiveRecord::Migration[6.0]
  def change
    create_join_table :trends, :tweets do |t|
      t.index [:trend_id, :tweet_id]
      t.index [:tweet_id, :trend_id]
    end
  end
end
