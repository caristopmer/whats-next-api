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
    
    def retrieve_action
        action = self.emotion.actions.where.not(id: self.action_ids).order("RANDOM()").first
        if action == nil
            action = Action.find_by(action: "stuck")
        else
            self.actions << action
        end
        action
    end
end
