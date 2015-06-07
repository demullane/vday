class HomeController < ApplicationController
  #before_action :authenticate

  def index
    @messages = Message.all.order(:id)
    @message = Message.new
  end

  def secret_page
    @tweet = Tweet.new
    @danielles = Tweet.new.danielles_tweets
    @found_tweets = @tweet.search_handle(params[:tw])
    # if twitter_user_exists?(params[:tw])
    #   @found_tweets = @tweet.search_handle(params[:tw])
    # else
    #   @found_tweets = false
    # end
  end

  private

  def authenticate
    raise PrivatePage unless current_user
    if !current_user
      flash[:notice] = "You must signin first."
    end
  end

end
