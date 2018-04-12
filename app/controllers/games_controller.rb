class GamesController < ApplicationController
  # Add your GamesController code here

  def index
  end

  def show
  end

  def new
    @game=Game.new
  end

  def create
    @game=Game.create(:state => ["", "", "", "", "", "", "", "", ""])
    render json: @game, status: 201
  end

  def edit
  end

    
  end

end
