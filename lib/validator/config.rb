module Validator
  class << self
    attr_accessor :config

    def configure
      self.config ||= Configuration.new
      yield(config) if block_given?
    end
  end

  class Configuration
    attr_accessor :hiera_validation, :hiera_config_path

    def initialize
      @hiera_validation = false
      @hiera_config_path = 'hiera.yaml'
    end
  end
end

Validator.configure
