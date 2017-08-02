require "rails_helper"

RSpec.describe "Routing to emotes", :type => :routing do
  it "routes POST /emotes to emotes#create" do
    expect(:post => "/emotes").to route_to("emotes#create")
  end

  it "routes GET /emotes to emotes#show" do
    expect(:get => "/emotes/1").to route_to("emotes#show", :id => "1")
  end
end
