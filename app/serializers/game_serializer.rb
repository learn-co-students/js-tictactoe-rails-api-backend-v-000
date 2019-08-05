# class GameSerializer < ActiveModel::Serializer
#   attributes :id, :state
# end
class Game < ActiveRecord::Base
  serialize :state, Array
end
