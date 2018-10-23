class GamesController < ApplicationController
  # Add your GamesController code here

  def index #get /games
    @games = Game.all
    render json: @games
  end

  def create #post /games
    @game = Game.create(game_params)
    render @game, status: 201
  end

  def show #get /games/:id
  end

  def update #patch /games
  end


  private

  def game_params
    params.permit(state: [])
  end


end
