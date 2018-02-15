class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy, :join_team]

  def index
    @players = Player.all
    @teams = Team.all
  end

  def new
    @player = Player.new
    @teams = Team.all
  end

  def create
    @player = Player.new(player_params)
    @player.save
    redirect_to players_path
  end

  def show
  end

  def edit
    @teams = Team.all
  end

  def update
    @player.update(player_params)
    redirect_to players_path
  end

  def destroy
    @player.destroy
    redirect_to players_path
  end

  def join_team
    @teams = Team.all
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    #white list
    params.require(:player).permit(:first_name, :last_name, :email, :phone_number, :password, :team_id)
  end
end
