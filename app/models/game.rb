class Game < ActiveRecord::Base

   def state
	   id = self.id
	   state = ActiveRecord::Base.connection.execute("SELECT state FROM games WHERE id=#{id}")
	   JSON.parse state[0]["state"] 
   end 	
end
