class Game < ActiveRecord::Base
#3 serialize @state so that AR can save an array 
    serialize :state, Array 
end