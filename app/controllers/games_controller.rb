class GamesController < ApplicationController
  # Add your GamesController code here
  def index
    @games = Game.all
    render json: @games
  end

  def create
    #binding.pry
    @game = Game.new(state: game_params)
    if @game.save
      render json: @game
    else
      render 'root'
    end
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update
    #binding.pry
    @game = Game.find(params[:id])
    if @game.update(state: game_params)
      render json: @game
    else
      render 'root'
    end
  end

  private

  def game_params
    params.require(:state)
  end

end
