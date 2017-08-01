class Action < ApplicationRecord
    has_many :recommendations
    has_many :emotion_actions
    has_many :emotions, through: :emotion_actions
    has_many :emotes, through: :recommendations

    validates :action, presence: true
end
