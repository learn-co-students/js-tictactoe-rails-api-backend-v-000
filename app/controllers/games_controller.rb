class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update]

  def index
    @games = Game.all
    render json: @games
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(state: params[:state])
    render json: @game, status: 201
  end

  def update
    @game.update(state: params[:state])
    render json: @game
  end

  def show
    render json: @game
  end


  private

    def set_game
      @game = Game.find(params[:id])
    end

end
