class GamesController < ApplicationController
  # Add your GamesController code here

  # def new
  #   @game = Game.new
  # end

  def index
    render json: Game.all
  end
  
  def create
    @game = Game.create(game_params)
    #render json: @game.to_json(only: [:state, :id])
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update
    Game.find(params[:id]).update(game_params)
    render json: @game
  end

  private
  def game_params
    #As per lab's raised issue:
    params.permit(:state => [])
  end

end
