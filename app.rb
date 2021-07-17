require 'sinatra'
require 'mysql2'
require 'json'
require 'active_record'

class App < Sinatra::Application
	ActiveRecord::Base.establish_connection(
		:adapter => 'mysql2',
		:host => 'localhost',
		:username => 'root',
		:password => 'root',
		:database => 'covid_tracker'
	)

	run! if app_file == $0
end
