class GamesController < ApplicationController

    before_action :get_game, only: [:show, :update]

  def create
    Game.create(state: params[:state])
    render json: @game, status: 201
  end

  def show
    render json: @game, status: 200
  end

  def update
    @game.update(state: params[:state])
    render json: @game, status: 201
  end

  def index
    @games = Game.all
    render json: @games, status: 200
  end

  private

  def get_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.permit(:state)
  end

end
