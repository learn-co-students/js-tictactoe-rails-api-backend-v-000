class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    binding.pry
    @state = JSON.stringify(params[:state])
    binding.pry
    @game = Game.create(state: params[:state])
    render plain: @game.state
  end

end
