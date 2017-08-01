class Emotion < ApplicationRecord
    has_many :recommendations
    has_many :emotion_actions
    has_many :actions, through: :emotion_actions
    has_many :emotes, through: :recommendations

    validates :name, presence: true
end
