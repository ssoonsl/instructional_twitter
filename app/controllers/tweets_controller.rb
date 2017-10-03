class TweetsController < ApplicationController

  def index
    @tweets = Tweet.order(created_at: :asc)
  end

end
