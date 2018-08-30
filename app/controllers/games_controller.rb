class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :set_game, only: [:show, :update]
  # skip_before_action :set_game, only: [:create, :index]

  def create
    @game = Game.create(state: params[:state])
    render json: @game, status: 201
  end

  def show
    render json: @game, status: 201
  end

  def update
    @game.update(state: params[:state])
    render json: @game, status: 201
  end

  def index
    @games = Game.all
    render json: @games, status: 201
  end

  private

  def set_game
    @game = Game.find_by(id: params[:id])
  end

  # def game_params
  #   params.require(:game).permit(:state, :id)
  # end
end
