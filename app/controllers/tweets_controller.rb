class TweetsController < ApplicationController
  before_action :require_login

  def index
    @tweets = Current.user.tweets
  end

  def new
    @tweet = Tweet.new
  end
end
