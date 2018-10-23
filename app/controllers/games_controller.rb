class GamesController < ApplicationController
  # Add your GamesController code here

  def create #post /games
    @game = Game.create(game_params)
    render @game, status: 201 #Created
  end

  def show #get /games/:id
    @game = Game.find(params[:id])
    render json: @game, status: 200 #Success
  end

  def update #patch /games
    @game = Game.find(params[:id])
    @game.update(game_params)
    render json: @game, status: 200 #Success
  end

  def index #get /games
    @games = Game.all
    render json: @games
  end


  private

  def game_params
    params.permit(state: [])
  end


end
