class GamesController < ApplicationController
  # Add your GamesController code here
  #serialize :state, Array

  def create
    @game = Game.create(state: params[:state])
    render json: @game
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
    #respond_to do |format|
    #  format.html { render :show }
    #  format.json { render json: @game }
    #end
  end

  def update
    @game = Game.find(params[:id])
    @game.update_attributes(state: params[:state])
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end

  private

  def game_params
    params.permit(:state)
  end
end
