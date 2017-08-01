class User < ApplicationRecord
  has_many :emotes

  #validates :identifier, :identifier_type, presence: true
end
