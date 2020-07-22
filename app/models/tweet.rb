class Tweet < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :trends

  validates :body, presence: true, length: { minimum: 3, maximum: 255 }

  def body=(value)
    super value
    tags = value.scan(/#\w+/).map(&:downcase)
    trends.clear
    tags.each { |tag| trends << Trend.where(tag: tag).first_or_create(tag: tag) }
  end
end
