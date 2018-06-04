class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update]

  def index
    render plain: Game.all
  end

  def new
    @game = Game.new
  end

  def create
  # 	raise params.inspect
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def edit
  end

  def update
    @game.update(post_params)
    binding.pry
    redirect_to post_path(@game)
  end

  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @game, status: 200 }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_game
    @game = Game.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def game_params
    params.fetch(:game, {}).permit(:state)
  end

end
