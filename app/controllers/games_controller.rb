class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :game_setter, only: [:show, :update]

  def create
  	@game = Game.create(state: game_state)
  	render json: @game
  end

  def show
  	render json: @game
  end

  def update
  	@game.update(state: game_state)
  	render json: @game
  end

  def index
  	@games = Game.all
  	render json: @games
  end

  private

  def game_state
  	#this is a silly way to do this
  	params[:state]
  end

  def game_setter
  	@game = Game.find(params[:id])
  end

end
