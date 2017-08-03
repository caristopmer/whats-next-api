require 'rails_helper'

RSpec.describe Emote do
  let(:emotion) { Emotion.new(name: "joy") }
  let(:user) { User.new(identifier: "+1555-555-1234", identifier_type: "sms") }
  let(:emote) { Emote.new(emote: "I am happy", user: user, emotion: emotion) }

  it "has user input" do
    expect(emote.emote).to eq "I am happy"
  end

  it "is associated with a user" do
    expect(emote.user).to be user
  end

  it "has an emotion associated with it" do
    expect(emote.emotion).to be emotion
  end
  # Not testing retrieve_emotion to avoid using up our allotted api calls
end
