class GamesController < ApplicationController
  
  def index
    @games = Game.all
    render json: @games, status: 201
  end

  def new
    @game = Game.new
    render json: @game, status: 201
  end

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 201
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    @game.save
    render json: @game
  end

  private

  def game_params
    params.permit(state: [])
  end

end
