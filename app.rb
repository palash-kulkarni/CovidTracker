require 'sinatra'
require 'mysql2'
require 'json'
require 'active_record'

require_relative './routes/init'

class App < Sinatra::Application

	use UserRoute

	ActiveRecord::Base.establish_connection(
		:adapter => 'mysql2',
		:host => 'localhost',
		:username => 'root',
		:password => 'root',
		:database => 'covid_tracker'
	)

	run! if app_file == $0
end