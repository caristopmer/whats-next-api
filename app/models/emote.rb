class Emote < ApplicationRecord
    belongs_to :user
    belongs_to :emotion
    has_many :recommendations, through: :emotion
    has_many :actions, through: :recommendations

    validates :input, :emotion_id, :action_array, presence: true

    def retrieve_emotion
        user_input = self.input
        response = HTTParty.get(URI.encode("https://www.emoj.ai/api/classify?text=#{user_input}&token=#{ENV["EMOJ_ACCESS_TOKEN"]}")).parsed_response
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
