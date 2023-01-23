class TwitterAccount < ApplicationRecord
  before_destroy :destroy_tweets
  belongs_to :user
  has_many :tweets

  validates :username, uniqueness: true

  def client
    Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.credentials.twitter.api_key
      config.consumer_secret     = Rails.application.credentials.twitter.api_secret
      config.access_token        = token
      config.access_token_secret = secret
    end
  end

  private

  def destroy_tweets
    self.tweets.destroy_all
  end
end
