puppet-validator
================

Validate your puppet site easily by compiling, style and syntax checking your puppet site.

Project is under heavy development. To get started pull down the code, build the gem (will publish soon) and in your Rakefile simply add:

require 'validator/config'

# Configure the validator to use hiera data!
Validator.configure do |config|
    config.hiera_validation = true
    config.hiera_config_path = hiera.yaml
end

require 'validator'

rake validator:compile
