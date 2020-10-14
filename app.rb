require_relative 'config/environment'
require './models/models.rb'


class NewsApp < Sinatra::Base
	enable :sessions


	get '/' do
	  @users = User.all
	  @news = News.all
	  erb :index
	end

	get '/about' do
	  @users = User.all
	  erb :about
	end


	get('/login') do
		erb :login
	end


	post('/login') do
	  @users.each do |user|
		if params['email'] == user.email && params['password'] == user.password
		  session[email] = true
		else
		  redirect '/login'
		end
	  end
	end

	get('/createUser') do
		erb :createUser
	end

	post('/createUser') do
      @users = User.all

      @users.each do |user|
      	if params['email'] == user.email 
	   	  puts 'email is not unique!'
	   	  break
	   	else
	   	  puts 'User was created ' << user.email << ' was created'
	   	  puts '<a href="/"> Back to main page. </a>'
	   	end
	  end
	  
	end


	get('/newsArticle/:title') do
		#code for fetching 1 piece of news
	end

	post('/newsArticle/:title') do
		#code creating new news
	end

	put('/newsArticle/:title') do
		#code for updating a piece of news
	end

	delete('/newsArticle/:title') do
		#code for deleting a piece of news
	end

end
