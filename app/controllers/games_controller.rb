class GamesController < ApplicationController
  # Add your GamesController code here
  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    @game.save
    render json: @game, status: 201
  end

  def update
    @game = Game.find(params[:id])
    @game.update(update_params)
    @game.save
    render json: @game, status: 200
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  def index
    @game = Game.all
    render json: @game, status: 200
  end

  private

  def update_params
    params.permit(state: [])
  end

  def game_params
    params.permit(state: [])
  end
end
