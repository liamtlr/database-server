require 'data_mapper'
require 'dm-postgres-adapter'

class Pair

  include DataMapper::Resource

  property :id,            Serial
  property :pair_key,      String, unique: true
  property :pair_value,    String

  def return_value
    self.pair_value
  end

end
