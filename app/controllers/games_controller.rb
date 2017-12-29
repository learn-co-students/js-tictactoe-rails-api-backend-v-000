class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update]
  
  def create
    @game = Game.create(game_params)
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end
  
  def show
      render json: @game
  end

  def edit
    render json: @game
  end

  def update
    if @game.update(game_params)
      redirect_to game_path(@game)
    else
      render :edit
    end
  end

  def destroy
    @game.destroy
    redirect_to root_path
  end

  private

  def game_params
    params.permit(state:[])
  end
  
  def set_game
    @game = Game.find(params[:id])
  end

end
