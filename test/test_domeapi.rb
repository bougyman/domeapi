# frozen_string_literal: true

require 'test_helper'

module Rubyists
  class TestDomeapi < Minitest::Test
    def test_that_it_has_a_version_number
      refute_nil Domeapi::VERSION
    end
  end
end
