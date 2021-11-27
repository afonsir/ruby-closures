# frozen_string_literal: true

module Twitter
  module REST
    class Client
      attr_accessor :access_token, :access_token_secret,
                    :consumer_key, :consumer_secret

      def initialize
        yield self if block_given?
      end
    end
  end
end
