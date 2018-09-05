class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    binding.pry
    #@state = JSON.stringify(params[:state])
    binding.pry
    @game = Game.create(state: params[:state])
    #@game.state = @game.state.gsub( "\"", "")
    @game.save
    binding.pry
    render plain: @game.state
    binding.pry
    #respond_to do |format|
    #  format.html { render :show }
    #  format.json { render json: @game}
    #end
  end

end
