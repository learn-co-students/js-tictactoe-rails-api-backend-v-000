class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update]

  def index
    
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(:state => params[:state])
    @game.save
    render json: @game, status: 201
  end

  def edit
  end

  def update
    @game.update(post_params)
    redirect_to post_path(@game)
  end

  def show
  	render json: @game, status: 200
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_game
    @game = Game.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def game_params
    params.require(:game).permit(:state)
   
  end

end
