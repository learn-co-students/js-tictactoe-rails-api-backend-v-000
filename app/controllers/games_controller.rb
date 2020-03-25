class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    @game = Game.create(game_params)
    # binding.pry
    # render json: @game
  end

  def show
    @game = Game.find(params[:id])
    # binding.pry
    render json: @game
      #ActiveModelSerializers doesnt handle primitives passed to render json: at all
  end

  def index
    @games = Game.all
    # binding.pry
    render json: @games
  end

  def update
    # binding.pry
    @game = Game.find(params[:id])
    # binding.pry
    @game.update({state: params[:state]})
    # binding.pry
    redirect_to games_path(@game)
  end

  private

  def game_params
    params.permit(:state => [])
  end

end
