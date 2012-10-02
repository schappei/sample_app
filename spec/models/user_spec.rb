require 'spec_helper'

describe User do
  before(:each) do
    @attr = { :name => "Example User", :email => "user@example.com" }
  end
  it "should reject names that are too long" do
    long_name = "a" * 51
    long_name_user = User.new(@attr.merge(:name => long_name))
    long_name_user.should_not be_valid
  end
end
