class Team < ApplicationRecord
  belongs_to :division
  has_many :players
  validates :name, presence: true

  # find an issue to validate there is no more than 2 players by team
end
