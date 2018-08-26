class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update]

  def index # get /games/:id
    @games = Game.all
    render json: @games
    # render 'home/index'
  end

  def create # post /games
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def update # patch /games/:id
    @game.update(game_params)
    render json: @game, status: 201
  end

  def show # get /games/:id
    render json: @game
  end

  private

  def game_params
    params.permit(state: [])
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
