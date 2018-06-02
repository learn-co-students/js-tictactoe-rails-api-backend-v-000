class Game < ActiveRecord::Base

	def initialize
		@state = ["", "", "", "", "", "", "", "", ""]
	end
	
end