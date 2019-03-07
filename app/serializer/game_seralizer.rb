class GameSerializer < ActiveRecord::Serializer
   attributes :id, :state
end
