require 'sinatra'
get '/frank-says' do
   'Put this in your pipe & smoke it!'
end
  
print("Hey")

def getModels()

	val = 120
	print(val + "hey")

end

get '/' do
  erb :index
end


get "/about" do
      erb :about
end