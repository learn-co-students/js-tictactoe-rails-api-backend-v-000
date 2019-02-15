class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :current_game, only: [:show, :update]

  def index
  	@games = Game.all
  	render json: @games, status: 201
  end

  def show
  	render json: @game, status: 201
  end

  def create
  	@game = Game.create(games_params)
  	render json: @game, status: 201
  end

  def update
  	@updated_game = @game.update(games_params)
  	render json: @updated_game, status: 201
  end

  private

  def current_game
  	@game = Game.find(params[:id])
  end

  def games_params
    params.permit(:state => [])
  end


end
