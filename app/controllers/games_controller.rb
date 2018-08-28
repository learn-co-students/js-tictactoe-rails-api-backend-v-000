class GamesController < ApplicationController
  before_action :set_game, except: [:create, :index]
  
  def index
    render json: Game.all
  end
  
  def show
    render json: @game
  end

  def create
    render json: Game.create(game_params).to_json
  end

  def update
    render json: @game.update(game_params)
  end
  
  private

  def game_params
    params.permit(state: [])
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
