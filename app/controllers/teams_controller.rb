class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.all
  end

   def new
    @team = Team.new
    @divisions = Division.all
  end

  def create
    @team = Team.new(team_params)
    @team.save
    redirect_to teams_path
  end

  def show
    @player1 = @team.players[0] || @player1 = nil
    @player2 = @team.players[1] || @player2 = nil
  end

  def edit
    @divisions = Division.all
  end

  def update
    @team.update(team_params)
    redirect_to teams_path
  end

  def destroy
    @team.destroy
    redirect_to teams_path
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    #white list
    params.require(:team).permit(:name, :division_id)
  end
end
