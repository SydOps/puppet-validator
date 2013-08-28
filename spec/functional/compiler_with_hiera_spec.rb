require 'validator/config'
require 'ruby-debug'

Validator.configure do |config|
  config.hiera_validation = true
  config.hiera_config_path = File.join(File.dirname(__FILE__), "resources", "hiera", "hiera.yaml")
end

require 'validator/compiler'

debugger
describe "Compiler with hiera" do
  describe "compile" do

    before :each do
      @common_options = {:location => File.join(File.dirname(__FILE__), "resources", "compiler"), :verbose => :false}
    end

    it "lookup hieradata as to not fail" do
      compiler = Validator::Compiler.new({:filter => /hiera_lookup/}.merge(@common_options))
      expect { compiler.compile }.to_not raise_error
    end
  end
end
