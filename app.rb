require_relative 'config/environment'
require './models/models.rb'


class NewsApp < Sinatra::Base
	enable :sessions
	set :public_folder, 'public'



	get '/' do
	  @users = User.all
	  @newsarticles = Newsarticle.all
	  erb :index
	end

	get '/about' do
	  @users = User.all
	  erb :about
	end





	get('/logout') do
		session['email'] = nil
		redirect '/'
	end


	get('/login') do
		erb :login
	end


	post('/login') do
      @users = User.all

	  @users.each do |user|
		if params['email'] == user.email && params['password'] == user.password
		  session['email'] = params['email']
		  redirect '/'
		else
		  @failedLogin = true
		  erb :login
		end
	  end
	end

	get('/createUser') do
		erb :createUser
	end

	post('/createUser') do
      @users = User.all

      # Check if there already is a user with the email
      userexists = false
      @users.each do |user|
      	if params['email'] == user.email 
      	    userexists = true
	   	end
	  end

	  if userexists 
	  	redirect '/createUser'
	  else
	  	newUser = {name: params['name'], lastname: params['lastname'], email: params['email'],password:params['password']}
      	User.create(newUser)
      	redirect '/login'
      end
	  
	end










	# controller for newsarticles.

	get('/newsArticle/:title') do
		puts NewsArticle.where(title: params['title']).to_s
	end

	post('/newsArticle/:title') do
		#code creating new news
		@users = User.All

    	newArticle = {title: params['title'], text: params['text'], author: params['author']}
      	NewsArticle.create(newArticle)
      	redirect '/'
	end

	put('/newsArticle/:title') do
		@newsarticles = Newsarticle.all
		#code for updating a piece of news
		newArticle = {title: params['newtitle'], text: params['newtext'], author: session[:email]}
    	NewsArticle.create(newArticle)
    	redirect '/'
	end

	delete('/newsArticle/:title') do
		@newsarticles = Newsarticle.all
		#code for deleting a piece of news
		@newsarticles.each do |newsarticle|
			#puts params['title']
			#puts newsarticle['title']
			#puts session['email']
			#puts newsarticle['author']
			if params['title'] == newsarticle.title and session['email'] == newsarticle.author
				newsarticle.destroy
			end
		end
      	redirect '/'
	end

end