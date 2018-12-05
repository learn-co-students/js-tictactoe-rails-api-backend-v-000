class GamesController < ApplicationController
  before_action :set_game, only: [:update, :show]

  def index
    @games = Game.all
    render json: @games, status: 200
  end

  def new
    @game = Game.new
  end

  def create
    Game.create(game_params)
    redirect_to '/'
  end

  def show
    render json: @game, status: 200
  end

  def update
    @game.update(game_params)
    if @game.save
      redirect_to '/'
    end
  end

  private
  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.permit(:id, :state=>[])
  end
end
