class GamesController < ApplicationController
  # Add your GamesController code here

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    respond_to do |format|
      format.html {render :show}
      format.json {render json: @game}
    end
  end

  def show
    @game = Game.find_by(id: params[:id])
    render json: @game, status: 200
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end

private
def game_params
  params.permit(state: [])
end


end
