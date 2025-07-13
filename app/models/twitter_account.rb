class TwitterAccount < ApplicationRecord
  # require "x"
  has_many :tweet
  belongs_to :user

  validates :username, uniqueness: true

  def client
    # x_credentials = {
    #   api_key:             Rails.application.credentials.dig(:twitter, :api_key),
    #   api_key_secret:      Rails.application.credentials.dig(:twitter, :api_secret),
    #   access_token:        token,
    #   access_token_secret: secret
    # }
    #
    # X::Client.new(**x_credentials)


    Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.credentials.dig(:twitter, :api_key).to_s
      config.consumer_secret     = Rails.application.credentials.dig(:twitter, :api_secret).to_s
      config.access_token        = token.to_s
      config.access_token_secret = secret.to_s
    end
  end
end
