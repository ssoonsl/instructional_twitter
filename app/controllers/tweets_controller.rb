class TweetsController < ApplicationController

  def index
    @tweets = Tweet.order(created_at: :asc)
  end

  def show
    @tweet = Tweet.find(params[:id])
    @replies = @tweet.replies
    @reply = Reply.new
  end

end
