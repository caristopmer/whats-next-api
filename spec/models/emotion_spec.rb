require 'rails_helper'

RSpec.describe Emotion do
    let(:emotion) { Emotion.new(name: "joy") }

    it "has a name" do 
        expect(emotion.name).to eq "joy"
    end
end