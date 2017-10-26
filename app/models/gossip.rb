class Gossip < ApplicationRecord
  validates :anonymous_author, presence: true
  validates :comment, presence: true, length: { minimum: 5 }
end
