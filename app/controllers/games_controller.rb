class GamesController < ApplicationController

  before_action :set_game, only: [:show, :update]
  
  def index 
    @games = Game.all
    render json: @games
  end
  
  def create
    @game = Game.create(state: params[:state])
    render 'home/index'
  end

  def show
    render json: @game
  end

  def update
    @game.update(state: params[:state])
    render 'home/index'
  end

 private

  def set_game
    @game = Game.find_by(params[:id])
  end

end
