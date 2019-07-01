class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(state: params[:state])
    @game.save
  end

  def show
    @game = Game.find(params[:id])
    render json: @game.to_json
  end

  def update
    @game = Game.find(params[:id])
    @game.update(state: params[:state])
  end

  def index
    @games = Game.all
  end

  # def game_params
  #   params.require(:game).permit(:state)
  # end

end
