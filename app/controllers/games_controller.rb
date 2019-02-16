class GamesController < ApplicationController
  before_action :game, only: [:show, :update]

  def index
    @games = Game.all
    render json: @games
  end

  def show
    render json: @game
  end

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def update
    @game.update(game_params)
    render json: @game, status: 201
  end

  private

  def game_params
    params.permit(:id, state:[])
  end

  def game
    @game = Game.find(params[:id])
  end
end
