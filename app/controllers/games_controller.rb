class GamesController < ApplicationController

  before_action :set_game, only: [:show, :update, :edit]
  
  def index 
    @games = Game.all
    respond_to do |f|
      f.html { render "home/index"}
      f.json { render json: @games }
    end
  end
  
  def new
    @game = Game.new
  end

  def create
    @game = Game.create(state: params[:state])
    render 'home/index'
  end

  def show
    respond_to do |f|
      f.html { render "home/index"}
      f.json { render json: @game }
    end
  end

 def edit

 end

 def update
  @game.update(state: params[:state])
  render 'home/index'
 end

 private

 def set_game
   @game = Game.find_by(params[:id])
 end
   
end
