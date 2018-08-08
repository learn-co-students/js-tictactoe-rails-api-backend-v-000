class GamesController < ApplicationController
  # Add your GamesController code here
def new
end

def create
  @game = Game.create(params["state"])
  render json: @game
end

private
  def game_params
    params.require(:games).permit(:id, :state)
  end
end
