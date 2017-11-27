class GamesController < ApplicationController
  before_action :get_game, only: [:show, :update]

  def create
    game = Game.create(game_params)
    render json: game, status: 201
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

  def game_params
    params.permit(state: [])
  end

  def get_game
    @game = Game.find(params[:id])
  end

end



