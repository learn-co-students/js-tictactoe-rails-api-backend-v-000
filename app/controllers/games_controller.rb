require 'pry'
class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    @game = Game.create(:state => params[:state])
    render 'home/index'
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update
    @game = Game.find(params[:id])
    @game.update(:state => params[:state])
    render 'home/index'
  end

  def index
    render json: Game.all
  end

end
