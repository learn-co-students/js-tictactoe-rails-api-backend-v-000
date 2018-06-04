class Game < ActiveRecord::Base
  validates :state, presence: true
  serialize :state, Array
end
