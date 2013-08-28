require 'validator/config'

# MonkeyPatch of HieraPuppet for compilation to override the hiera lookup function and always return a value
# As usual with monkey patches, please use this sparingly. It should only be included in instances where the
# user has not requested hiera validation.
module HieraPuppet
  def self.lookup key, default, scope, override, resolution_type
    return "foo"
  end
end
