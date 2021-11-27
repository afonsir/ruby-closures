# frozen_string_literal: true

module Twitter
  module REST
    class Client
      attr_accessor :access_token, :access_token_secret,
                    :consumer_key, :consumer_secret

      def initialize(options = {}, &block)
        options.each { |k, v| public_send("#{k}=", v) }

        instance_eval(&block) if block_given?
      end
    end
  end
end

# client = Twitter::REST::Client.new(consumer_key: "YOUR_CONSUMER_KEY") do
#   self.consumer_secret     = "YOUR_CONSUMER_SECRET"
#   self.access_token        = "YOUR_ACCESS_TOKEN"
#   self.access_token_secret = "YOUR_ACCESS_SECRET"
# end
