require 'data_mapper'
require 'dm-postgres-adapter'

require_relative 'models/pair'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/pair_storage_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
