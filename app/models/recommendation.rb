class Recommendation < ApplicationRecord
    belongs_to :emote
    belongs_to :action

    validates :emote, :action, presence: true
end