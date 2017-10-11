class RepliesController < ApplicationController

  before_action :authenticate_user!

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @reply = @tweet.replies.build(reply_params)
    @reply.user = current_user
    if @reply.save
      TweetMailer.new_reply(@reply).deliver_later
      redirect_to tweet_path(@tweet)
    else
      render 'tweets/show'
    end
  end

  private

  def reply_params
    params.require(:reply).permit(:body)
  end

end
