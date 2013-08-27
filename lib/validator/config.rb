module Validator
  class << self
    attr_accessor :config

    def configure
      self.config ||= Configuration.new
      yield(config) if block_given?
    end
  end

  class Configuration
    attr_accessor :hiera_validation

    def initialize
      @hiera_validation = false
    end
  end
end

Validator.configure
