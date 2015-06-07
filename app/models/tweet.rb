# class Tweet
#
#   def initialize
#     @client =  Twitter::REST::Client.new do |config|
#       config.consumer_key        = Rails.application.secrets.consumer_key
#       config.consumer_secret     = Rails.application.secrets.consumer_secret
#       config.access_token        = Rails.application.secrets.access_token
#       config.access_token_secret = Rails.application.secrets.access_token_secret
#     end
#   end
#
#   def danielles_tweets
#     @client.user_timeline("demullane")
#   end
#
#   def search_handle(username)
#     @client.user_timeline(username)
#   end
#
#   # def twitter_user_exists?(username)
#   #   @client.user_timeline(username)
#   #     true
#   #   rescue Twitter::Error::NotFound
#   #     false
#   # end
# end
