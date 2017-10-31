class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def index
    @games = Game.all 
    render json: @games 
  end

  def show 
    render json: @game
  end
  
  def new 
    @game = Game.new 
    render json: @game
  end 
  
  def create
    binding.pry 
    
    @game = Game.new(game_params)
    if @game.save
      render json: @game
    else 
      redirect_to 'new'
    end
  end
  
  def edit 
    # render json: @game
  end 
  
  def update 
    render json: @game
  end 
  
  def destroy 
    # render.json
  end
  private 
  def set_game 
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:state)
  end
end
