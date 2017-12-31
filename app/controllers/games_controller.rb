class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :set_game, only: [:show, :update]

  def create
    @game = Game.create(game_params)
    render json: @game
  end

  def show
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end

  def update
    @game.update_attributes(game_params)
    render json: @game
  end

  private
  def set_game
    @game = Game.find_by(id: params[:id])
  end

  def game_params
    {id: params[:id], state: params[:state]}
  end

end
