class GamesController < ApplicationController
  # Add your GamesController code here


  def create
    @game = Game.create(game_params)
    @game.save
    render json: @game
  end

  def show
    @game = Game.find_by(params[:id])
    render json: @game
  end

  def update
    @game = Game.find_by(params[:id])
    @game.update(game_params)
    @game.save
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end


  private

  def game_params
    params.permit(state: [])
  end

end
