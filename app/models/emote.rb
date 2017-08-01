class Emote < ApplicationRecord
    #belongs_to :user
    belongs_to :emotion
    has_many :recommendations
    has_many :actions, through: :recommendations

    validates :emote, presence: true

    before_validation(on: :create) do
        self.emotion = self.retrieve_emotion
    end

    def retrieve_emotion
        response = HTTParty.get(URI.encode("https://www.emoj.ai/api/classify?text=#{self.emote}&token=#{ENV["EMOJ_ACCESS_TOKEN"]}")).parsed_response
        Emotion.find_by(name: response["emotion"])
    end

    def retrieve_actions
        action_strings = []
        self.emotion.actions.each do |action|
            action_strings << action.content
        end
        action_strings.shuffle
    end
end
