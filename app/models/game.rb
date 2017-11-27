class Game < ActiveRecord::Base
  serialize :state, Array
  #:state is stored in database as text.  This method converts it 
  #into an array when we access it.
end