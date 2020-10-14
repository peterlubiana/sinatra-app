require_relative 'config/environment'

class App < Sinatra::Base
	puts " hey testing! "

	 get '/' do
 	  "Hello, World!"
  	end
end