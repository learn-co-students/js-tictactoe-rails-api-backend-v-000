class GamesController < ApplicationController
  
  before_action :game_finder, only: [:show, :update]

  def create
    @game = Game.create(game_params)
    render json: @game
  end

  def show
    render json: @game
  end

  def update
    @game.update(game_params)
    render json: @game
  end

  def index
    @games=Game.all
    render json: @games
  end

  private

    def game_params
      params.permit(:id, state:[])
    end

    def game_finder
      @game=Game.find(params[:id])
    end

end
