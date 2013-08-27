require 'validator/config'

describe "Validator::Configuration" do
  before(:each) do
    @config = Validator::Configuration.new
  end

  it "returns a valid configuration object using defaults" do
    expect(@config.hiera_validation).to equal false
  end
end
