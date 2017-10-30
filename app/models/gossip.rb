class Gossip < ApplicationRecord
  belongs_to :moussaillon
  validates :anonymous_author, presence: true
  validates :comment, presence: true, length: { minimum: 5 }
end
