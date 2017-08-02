require 'rails_helper'

RSpec.describe EmotionAction do
  let(:emotion) { Emotion.new(name: "joy") }
  let(:action) { Action.new(action: "Mow your lawn") }
  let(:emotion_action) { EmotionAction.new(emotion: emotion, action: action)}

  it "has an associated emotion" do
    expect(emotion_action.emotion).to be emotion
  end

  it "has an associated action" do
    expect(emotion_action.action).to be action
  end
end
