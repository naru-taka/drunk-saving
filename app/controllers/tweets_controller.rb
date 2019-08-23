class TweetsController < ApplicationController
  
  def index
    @tweets = Tweet.all.includes(:user)
  end

  def new
  end

  def create
    Tweet.create(money: tweet_params[:money], text: tweet_params[:text], user_id: current_user.id)
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy if tweet.user_id == current_user.id
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.update(tweet_params)
    end
  end

  private
    def tweet_params
      params.permit(:money, :text)
    end

end
