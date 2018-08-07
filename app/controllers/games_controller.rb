class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :find_game, only: [:show, :update]

  def index
    @game = Game.all
    render json: @game, status: 201
  end

  def show
    find_game
    render json: @game, status: 201
  end

  def create
    game = Game.create(games_params)
    render json: @game, status: 201
  end

  def update
    find_game
    @game.update(games_params)
    render json: @game, status: 201
  end

  private
  def games_params
    params.permit(state: [])
  end

  def find_game
    @game = Game.find(params[:id])
  end
end
