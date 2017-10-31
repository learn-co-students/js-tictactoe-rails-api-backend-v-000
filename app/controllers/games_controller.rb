class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def index
    @games = Game.all 
    render json: @games 
  end

  def test_index
    @games = Game.all
    render 'home/test_index'
  end

  def show 
    render json: @game
  end
  
  def new 
    @game = Game.new 
    render json: @game
  end 
  
  def create
    @game = Game.new(state: params["state"])
    if @game.save
      render json: @game
    else 
      redirect_to 'new'
    end
  end
  
  def edit 
    render json: @game
  end 
  
  def update 
    @game.update(state: params["state"])
    @game.save
    render json: @game
  end 
  
  def destroy
  end

  private 
    def set_game 
      @game = Game.find(params[:id])
    end
end
