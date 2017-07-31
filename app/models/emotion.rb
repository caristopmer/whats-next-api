class Emotion < ApplicationRecord
    has_many :recommendations
    has_many :actions, through: :recommendations
    has_many :emotes, through: :recommendations

    validates :name, presence: true
end
