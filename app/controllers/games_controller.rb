class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :set_game, only: [:new, :show, :update]

  def index
    @games= Game.all
    render json: @games, status: 200
  end

  def new
  end

  def create
    @game = Game.create(games_params)
    render json: @game, status: 201
  end

  def show
    render json: @game, status: 200
  end

  def update
    @game.update(games_params)
    render json: @game, status: 200
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def games_params
    params.permit(state: [])
  end

end
