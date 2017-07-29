require 'rails_helper'

RSpec.describe Emote do
    let(:emotion) { Emotion.new(name: "joy") }
    let(:action) { Action.new(content: "Mow your lawn (joy)") }
    let(:recommendation) { Recommendation.new(emotion: emotion, action: action) }
    let(:emote) { Emote.new(input: "I am happy", recommendation: recommendation) }

    it "has user input" do 
        expect(emote.input).to eq "I am happy"
    end

    it "has a recommendation" do 
        expect(emote.recommendation).to be recommendation
    end

    # Not testing retrieve_action to avoid using up our allotted api calls
end