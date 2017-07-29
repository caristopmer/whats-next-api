require 'rails_helper'

RSpec.describe Action do
    let(:action) { Action.new(content: "Mow your lawn (joy)") }

    it "has content" do 
        expect(action.content).to eq "Mow your lawn (joy)"
    end
end