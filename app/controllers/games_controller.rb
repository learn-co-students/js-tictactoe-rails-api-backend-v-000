class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update]
  def create
    #POST /games
    game = Game.create(game_params)
    render json: game, status: 201
  end

  def show
    render json: @game
  end

  def update
    #PATCH /games/:id
    @game.update(game_params)
    render json: @game
  end

  def index
    games = Game.all
    render json: games
  end

  private

  def game_params
    params.permit(:state => [])
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
