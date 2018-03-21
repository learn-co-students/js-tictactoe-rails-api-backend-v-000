class Game < ActiveRecord::Base
  # fixes ActiveRecord issue so that state is stored as an Array in a TEXT-typed database column
  # use .serialize method provided by ActiveRecord::Base
  serialize :state, Array
end
