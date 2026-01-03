# frozen_string_literal: true

module Rubyists
  module Domeapi
    module Polymarket
      # Polymarket API Client
      class Client
        attr_reader :client

        def initialize(client)
          @client = client
        end

        def markets
          @markets ||= Markets.new(client)
        end

        def orders
          @orders ||= Orders.new(client)
        end
      end
    end
  end
end
