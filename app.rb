require_relative 'config/environment'
require './models/models.rb'


class App < Sinatra::Base

	get '/' do
	  @users = User.all
	  erb :index
	end

	get '/about' do
	  @users = User.all
	  erb :about
	end


	get('/login') { haml :login }

	post('/login') do
	  if params['name'] == 'admin' && params['password'] == 'admin'
	    session['user_name'] = params['name']
	  else
	    redirect '/login'
	  end
	end

end