class Emote < ApplicationRecord
    belongs_to :recommendation

    validates :input, :recommendation, presence: true
end