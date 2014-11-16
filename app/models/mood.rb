class Mood < ActiveRecord::Base
  has_one :arrangement

  def self.calculate_from_tweet(tweet)
    require 'faraday'
    require "faraday_middleware"
    _url = 'https://lr.capio.jp'
    _end_point = "/webapis/iminos/synana_k/1_1/"
    conn = Faraday::Connection.new(url: _url) do |builder|
      builder.use Faraday::Request::UrlEncoded
      # builder.use Faraday::Response::Logger
      builder.use Faraday::Adapter::NetHttp
    end
    conn.response :json

    response = conn.get do |req|
      req.url _end_point
      req.params = {
        sent: tweet.massage, 
        # mode: "tw_mode",
        acckey: "h4cgyHfWvmThDeVe"
      }
    end
    response.body['results'].first['sensibilities']
  end

  def self.find_mood(tweet)
    sensibilities = self.calculate_from_tweet(tweet)
    mood = Mood.where(name: sensibilities.first).first
  end
end
