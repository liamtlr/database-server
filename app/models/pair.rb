require 'data_mapper'
require 'dm-postgres-adapter'

class Pair

  include DataMapper::Resource

  property :id,            Serial
  property :pair_key,      String
  property :pair_value,    String

  def create_pair(key, value)
    self.Pair.create(pair_key: key, pair_value: value)
  end

end
