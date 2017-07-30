class Action < ApplicationRecord
    has_many :recommendations
    has_many :emotes, through: :recommendations
    belongs_to :emotion

    validates :content, presence: true
end