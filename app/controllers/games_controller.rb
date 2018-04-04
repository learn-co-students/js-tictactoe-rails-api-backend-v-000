class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update]

  def index
    @game = Game.all
    render json: @game, status: 200
  end

  def show
    render json: @game, status: 200
  end

  def create
    @game = Game.create(state: params[:state])
    render json: @game, status: 201
  end

  def update
    @game.update(state: params[:state])
    render json: @game, status: 200
  end

  private
    def set_game
      @game = Game.find(params[:id])
    end

    def games_params
      params.require(:state).permit()
    end
end
