class GamesController < ApplicationController
  # Add your GamesController code here
  
  def index
    @games = Game.all
    render :json => @games, :status  => 200
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      render :json => @game, :status => 201
    end
  end

  def show
    @game = Game.find(params[:id])
    render :json => @game, :status => 200
  end

  def update
    # binding.pry
    @game = Game.find(params[:id])
    @game.update(game_params)
    render :json => @game, :status => 202
  end

  private

    def game_params
      params.permit(:state => [])
    end

end
