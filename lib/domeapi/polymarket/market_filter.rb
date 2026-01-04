# frozen_string_literal: true

module Rubyists
  module Domeapi
    module Polymarket
      # Filter for Polymarket markets
      class MarketFilter < Contract
        property :market_slug
        property :event_slug
        property :condition_id
        property :tags
        property :status
        property :min_volume
        property :limit
        property :offset
        property :start_time
        property :end_time

        validation do
          params do
            optional(:status).filled(:string, included_in?: %w[open closed])
          end
        end

        def to_h
          to_nested_hash.compact
        end
      end
    end
  end
end
