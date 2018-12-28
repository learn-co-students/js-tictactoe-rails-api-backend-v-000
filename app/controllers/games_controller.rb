class GamesController < ApplicationController
  before_action :find_game, only:  [:show, :update]

  def index #get /games
    @games = Game.all
    render json: @games
  end

  def new
    @game = Game.new
  end

  def create #post to games
    @game = Game.create(game_params)
    #redirect_to games_path
    render json: @game #, status: 201
  end

  def show #get /games/#id
  #  @game = Game.find(params[:id]) can be taken out because of before_action
      render json: @game
  #  respond_to do |format|
    #  format.html { render :index }
  #    format.json { render json: @game }
  #  end
  end

  def update #patch
    #  @game = Game.find(params[:id]) can be taken out because of before_action
    @game.update(game_params)
    render json: @game
  end

  private

  def find_game
      @game = Game.find(params[:id])
  end

  def game_params
    params.permit(state: [])
  end
end
