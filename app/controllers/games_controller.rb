class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update]
  
  def index
    @games = Game.all
    render json: @games, :layout => false
  end

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201, :layout => false
  end

  def show
    render json: @game, :layout => false
  end

  def update
    @game.update(game_params)
    if @game.save
      render json: @game, status: 201, :layout => false
    else
      render root_path
    end
  end

  private

  def game_params
    params.permit(state: [])
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
