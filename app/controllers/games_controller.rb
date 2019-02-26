class GamesController < ApplicationController
  # Add your GamesController code here
before_action :find_game, only: [:update, :show]

  def new
    @game = Game.new
  end


  def create
    @game = Game.create(game_params)
    render json: @game, status: 200
  end


  def show
    render json: @game, status: 201
  end

  def update
    @game.update(game_params)
    render json: @game
  end


  def index
    @games = Game.all
    render json: @games
  end

  private


  def find_game
    @game = Game.find(params[:id])
  end


  def game_params
   params.permit(state: [])
  end


end
