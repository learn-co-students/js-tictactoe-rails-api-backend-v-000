class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :set_game, only: [:show, :update]

  def index #Get /games
    games = Game.all
    render json: games
  end

  def create #POST /games
    game = Game.create(game_params)
    render json: game
  end

  def show  #GET /games/:id
    # game = Game.find(params[:id])
    render json: @game
  end

  def update #PATCH /games/:id
    @game.update(game_params)
    render json: @game
    # game = Game.find(params[:id])
  end



  private

  def game_params
    params.permit(state: [])
  end

  def set_game
      @game = Game.find(params[:id])
  end
end
