class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update]
  
  def index
    @games = Game.all
    render_json(@games)
  end

  def show
    render_json(@game)
  end

  def create
    @game = Game.create(state: ["X","","","","","","","",""])
    render_json(@game)
  end

  def update
    @game.update(:state => params.require(:state))
    render_json(@game)
  end

  private
    def set_game
      @game = Game.find_by(:id => params[:id])
    end

    def render_json(obj)
      render json: obj, status: 201
    end
end
