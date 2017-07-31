class Recommendation < ApplicationRecord
    belongs_to :emotion
    belongs_to :action
    has_many :emotes

    validates :emotion, :action, presence: true
end
