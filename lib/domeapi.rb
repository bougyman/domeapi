# frozen_string_literal: true

require 'semantic_logger'
require 'zeitwerk'
require_relative 'domeapi/version'

module Rubyists
  # Domeapi module
  module Domeapi
    include SemanticLogger::Loggable

    class Error < StandardError; end

    # Operation submodule, for Trailblazer operations
    module Operation; end
  end
end

loader = Zeitwerk::Loader.new
loader.tag = 'rubyists-domeapi'
loader.push_dir("#{__dir__}/domeapi", namespace: Rubyists::Domeapi)
loader.push_dir("#{__dir__}/domeapi/operations", namespace: Rubyists::Domeapi::Operation)
loader.ignore("#{__dir__}/domeapi/version.rb")
loader.setup
