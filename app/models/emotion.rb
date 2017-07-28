class Emotion < ApplicationController
    has_many :recommendations

    validates :name, presence: true
end