class GamesController < ApplicationController
  # Add your GamesController code here

  def index #get /games
    @games = Game.all
    render json: games
  end

  def create #post /games
  end

  def show #get /games/:id
  end

  def update #patch /games
  end


  private



end
