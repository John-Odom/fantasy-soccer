class Player < ApplicationRecord
    has_many :lineups, dependent: :destroy
    has_many :teams, through: :lineups
end
