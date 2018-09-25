class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update]

  def create
     @game = Game.create(state: params[:state])
     render :json => @game, :status => 201
   end

   def show
     render :json => @game, :status => 200
   end

   def update
     @game.update(state: params[:state])
     render :json => @game, :status => 200
   end

   def index
     @games = Game.all
     render :json => @games, :status => 200
   end

   private

   def set_game
     @game = Game.find(params[:id])
   end
 end
