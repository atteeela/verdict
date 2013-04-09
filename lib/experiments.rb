require 'logger'

module Experiments
  extend self

  attr_accessor :logger
end

require "experiments/version"
require "experiments/railtie" if defined?(Rails)
require "experiments/experiment"

Experiments.logger ||= Logger.new("/dev/null")