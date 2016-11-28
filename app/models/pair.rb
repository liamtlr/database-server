require 'data_mapper'
require 'dm-postgres-adapter'

class Pair

  include DataMapper::Resource

  property :id,            Serial
  property :pair_key,      String
  property :pair_value,    String

end
