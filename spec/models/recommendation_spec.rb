require 'rails_helper'

RSpec.describe Recommendation do
    let(:emotion) { Emotion.new(name: "joy") }
    let(:action) { Action.new(content: "Mow your lawn (joy)") }
    let(:recommendation) { Recommendation.new(emotion: emotion, action: action) }
    
    it "has an associated emotion" do 
        expect(recommendation.emotion).to be emotion
    end

    it "has an associated action" do
        expect(recommendation.action).to be action
    end
end