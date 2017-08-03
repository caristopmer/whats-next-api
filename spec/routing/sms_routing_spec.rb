require "rails_helper"

RSpec.describe "Routing to sms", :type => :routing do
  it "routes post /sms to sms#receive" do
    expect(:post => "/sms").to route_to("sms#receive")
  end
end
