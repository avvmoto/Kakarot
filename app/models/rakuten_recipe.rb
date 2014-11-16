require 'faraday'
require "faraday_middleware"
class RakutenRecipeNotFound < StandardError; end

class RakutenRecipe
  URL = 'https://app.rakuten.co.jp'
  ENDPOINT = '/engine/api/Recipe/Search/20140719'

  def self.client
    @@client ||= Faraday.new(url:URL) do |connection|
      connection.adapter :net_http
      connection.request :url_encoded
      connection.response :json
    end
  end

  def self.search_recipe(keyword)
    response = client.get do |req|
      req.url ENDPOINT
      req.params = {
        applicationId: ENV['RK_APPLICATION_ID'],
        keyword: keyword
      }
    end
    raise RakutenRecipeNotFound, "#{keyword} does found via the API" unless response.body.present?
    response.body["results"]
  end
end
