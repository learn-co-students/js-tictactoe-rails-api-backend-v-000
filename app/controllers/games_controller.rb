class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :set_game, only: [:edit, :show, :destroy, :update]
  
  def index
    @games = Game.all
    render json: @games, status: 200
  end
  
  def create
    @game = Game.create(state: params[:state])
    render json: @game, status: 200
  end
  
  def show
    render json: @game, status: 200
  end
  
  def update
    @game.update(state: params[:state])
    render json: @game, status: 200
  end
  
  private
  
  def set_game
    @game = Game.find(params[:id])
  end
  
end
