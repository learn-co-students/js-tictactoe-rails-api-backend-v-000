class GamesController < ApplicationController

  def index
  end

  def create
    @game = Game.create(state: params[:state])
    render json: @game
  end

  def update
  end

  def show
  end

private

def game_params
  params.require(:game).permit(:state)
end

end
