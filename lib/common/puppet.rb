# The only thing that should go in here is some very basic initialization steps
# for the puppet app. Do not require 'puppet' directly it doesn't work that well
# with Puppet 3.x

require 'puppet'

# Version 3 specifics
if Puppet.version[0] == "3"
  # This is important when using Puppet > 2.x, will setup important default
  # settings when initializing the puppet app via side doors.
  Puppet.initialize_settings unless Puppet.settings.global_defaults_initialized?
end
