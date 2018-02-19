class MatchsController < ApplicationController
  def edit

  end



  def generate
    teams = Team.all
    divisions = Division.all
    d1 = divisions.first.teams
    d2 = divisions.second.teams
    d3 = divisions.third.teams
    d4 = divisions.last.teams

    # l'idee est de pouvoir generer des instances de matchs qui pourront etre editer
    # avant d'aller plus loin, je pense qu'il faut qu'un match d'abord générer match_teams
    # certainement plus dans match_teams qu'il faut generer l'algo A vs B, A vs C, etc.
    raise
  end
end
