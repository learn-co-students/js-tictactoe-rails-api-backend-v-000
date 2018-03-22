class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    @game = Game.all
    render json: @game, status: 200
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  def create
    @game = Game.create(state: params[:state])
    render json: @game, status: 201
  end

  def update
    @game = Game.find(params[:id])
    @game.update(state: params[:state])
    render json: @game, status: 200
  end

  private

    def games_params
      params.require(:state).permit()
    end
end
