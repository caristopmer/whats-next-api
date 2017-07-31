class Action < ApplicationRecord
    has_many :recommendations
    has_many :emotions, through: :recommendations
    has_many :emotes, through: :recommendations

    validates :content, presence: true
end
