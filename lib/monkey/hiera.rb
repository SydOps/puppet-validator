require 'validator/config'

# MonkeyPatch of HieraPuppet for compilation to override the hiera lookup function and always return a value
if Validator.config.hiera_validation == false
  module HieraPuppet
    def self.lookup key, default, scope, override, resolution_type
      return "foo"
    end
  end
end
