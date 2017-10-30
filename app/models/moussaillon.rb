class Moussaillon < ApplicationRecord
    has_many :gossips, dependent: :destroy
end
