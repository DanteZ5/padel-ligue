class Team < ApplicationRecord
  belongs_to :division
  has_many :players
  has_many :matchs, through: :match_team
  validates :name, presence: true
  after_initialize :init

    def init
      self.score  ||= 0        #will set the default value only if it's nil
      self.played ||= 0
      self.rank ||= 0#let's you set a default association
    end

  # find an issue to validate there is no more than 2 players by team
end
