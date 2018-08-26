class GamesController < ApplicationController
  # Add your GamesController code here

  def index # get /games/:id
    @games = Game.all
    render json: @games
    # render 'home/index'
  end

  def create # post /games
    @game = Game.create(state: params[:state])
    render json: @game, status: 201
  end

  def update # patch /games/:id
    @game = Game.find(params[:id])
    @game.state = params[:state]
    @game.save
    render json: @game, status: 201
  end

  def show # get /games/:id
    @game = Game.find(params[:id])
    render json: @game
  end

  private

  # def game_params
  #   params.require(:game).permit(:id, :state)
  # end

end
