class HomeController < ApplicationController
  def index
  	binding.pry
  	
  	respond_to do |format|
      format.html
      format.json
    end
  end
end
