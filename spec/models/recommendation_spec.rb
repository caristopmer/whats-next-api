require 'rails_helper'

RSpec.describe Recommendation do
  let(:emote) { Emote.new(emote: "I am happy") }
  let(:action) { Action.new(action: "Mow your lawn (joy)") }
  let(:recommendation) { Recommendation.new(emote: emote, action: action) }

    it "has an associated emotion" do
        expect(recommendation.emote).to be emote
    end

    it "has an associated action" do
        expect(recommendation.action).to be action
    end
end
