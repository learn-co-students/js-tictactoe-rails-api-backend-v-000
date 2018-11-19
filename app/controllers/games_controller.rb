class GamesController < ApplicationController
  # Add your GamesController code here

  # state = [ "", "", "",
  #           "", "", "",
  #           "", "", ""  ]

  def index
    @games = Game.all
    render layout: '/home/index', json: @games
  end

  def create
    @game = Game.create(state: params[:state])
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update
    @game = Game.find(params[:id])
    @game.update(:state => params[:state])
    render json: @game, status: 200
  end

  # private
  
  # def game_params
  #   params.require(:game).permit(:id, :state)
  # end

end
