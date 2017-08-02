require 'rails_helper'

RSpec.describe Action do
  let(:action) { Action.new(action: "Mow your lawn") }

  it "has content" do
      expect(action.action).to eq "Mow your lawn"
  end
end
