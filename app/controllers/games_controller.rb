class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :find_game, only: [:show, :update]

  def index
  	@games = Game.all
  	render json: @games, status: 201
  end

  def create
  	@game = Game.create(state: params[:state])
  	render json: @game, status: 201
  end

  def update
  	@game.update(state: params[:state])
  	render json: @game, status: 201
  end

  def show
  	render json: @game, status: 201
  end

  private

  def find_game
  	@game = Game.find(params[:id])
  end
end
