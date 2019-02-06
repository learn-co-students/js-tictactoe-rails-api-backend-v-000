class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update]

  # Add your GamesController code here
  def index
    @games = Game.all
    render json: @games, status: 200
  end

  def show
    render json: @game, status: 200
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def update
    @game.update(game_params)
    render json: @game, status: 202
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_game
    @game = Game.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def game_params
    # why the .require does not work
    # ActionController::ParameterMissing:
    #   param is missing or the value is empty: game
    # params.require(:game).permit(state: [])
    params.permit(state: [])
  end
end
