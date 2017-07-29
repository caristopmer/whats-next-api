class Emote < ApplicationRecord
    belongs_to :recommendation
    has_one :emotion, through: :recommendation
    has_one :action, through: :recommendation

    validates :input, :recommendation, presence: true
end