class Emote < ApplicationRecord
    belongs_to :user
    belongs_to :emotion
    has_many :recommendations, through: :emotion
    has_many :actions, through: :recommendations

    validates :input, :emotion_id, :action_array, presence: true

    def retrieve_action
        user_input = self.input
        response = HTTParty.get(URI.encode("https://www.emoj.ai/api/classify?text=#{user_input}&token=#{ENV["EMOJ_ACCESS_TOKEN"]}")).parsed_response
        Recommendation.where(emotion_id: Emotion.find_by(name: response["emotion"]).id).sample
    end
end
