class Team < ApplicationRecord
    has_many :lineups, dependent: :destroy
    has_many :players, through: :lineups
end
