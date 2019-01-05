class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :set_game, only: [:show, :edit, :update]

  def index
    @games = Game.all
    render json: @games
  end

  def new
    @game = Game.new
  end

  def show
    render json: @game
  end


  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
    #or render 'home/index', status: 201
  end

  def edit
  end

  def update
    @game.update(game_params)
    render json: @game
    #or render 'home/index'
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.permit(state: [])
  end



end
