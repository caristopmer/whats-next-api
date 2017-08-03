require 'rails_helper'

RSpec.describe User do
  let(:user) { User.new(identifier: "+1555-555-1234", identifier_type: "sms") }

  it "has a unique identifier" do
    expect(user.identifier).to eq "+1555-555-1234"
  end

  it "has a unique identifier type" do
    expect(user.identifier_type).to eq "sms"
  end
end
