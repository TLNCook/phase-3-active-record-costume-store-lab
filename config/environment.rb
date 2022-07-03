ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

require_all 'app/models'
