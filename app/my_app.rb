ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'data_mapper_setup'
require_relative 'models/pair'

class MyApp < Sinatra::Base

  set :port, 4000

  get '/' do
    'To input to the database enter "/set?VALUE_1_TO_STORE=VALUE_2_TO_STORE in addition to the current URL'
  end

  get '/set' do
    params.each do |key, value|
      pair_entry = Pair.new(pair_key: key, pair_value: value)
      if pair_entry.save
        puts "Pair created: #{key}: #{value}"
        redirect ('/')
        puts "Something went wrong"
      end
    end
  end

  get '/get' do
    pair_entry = Pair.first(:pair_key => params[:key])
    pair_entry.return_value
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
