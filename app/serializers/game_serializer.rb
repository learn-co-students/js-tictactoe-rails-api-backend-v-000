#5 create game serializer with rails generator
class GameSerializer < ActiveModel::Serializer
  attributes :id, :state
end
