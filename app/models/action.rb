class Action < ApplicationRecord
    has_many :recommendations

    validates :content, presence: true
end