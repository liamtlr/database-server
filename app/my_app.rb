ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'data_mapper_setup'
require_relative 'models/pair'

class MyApp < Sinatra::Base
  get '/' do
    'Hello MyApp!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
