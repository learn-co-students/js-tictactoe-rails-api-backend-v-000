class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    @games = Game.all
    render json: @games
  end

  def create
#binding.pry
    @game = Game.create(game_params)
    if @game.save
    render json: @game, status: 201
  end
  #  binding.pry
  end

  def update
    @game =Game.find(params[:id])
    @game.update(game_params)
    render json: @game
  end

  def show
    @game = Game.find(params[:id])
  render json: @game
  end

  private

  def game_params

    params.permit(state: [])
  end

end
