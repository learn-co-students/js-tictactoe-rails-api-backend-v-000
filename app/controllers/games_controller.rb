class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :get_game, only: [:show, :update]

  def create
    @game = Game.new
    @game.state = params[:state]
    @game.save
    render json: @game
  end

  def show
    render json: @game
  end

  def update
    @game.state = params[:state]
    @game.save
    render json: @game
  end

  def index
    render json: Game.all
  end

  private

  def get_game
    @game = Game.find(params[:id])
  end
end
