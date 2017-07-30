class Emotion < ApplicationRecord
    has_many :emotes
    has_many :actions

    validates :name, presence: true
end