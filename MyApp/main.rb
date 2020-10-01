require 'sinatra'
get '/frank-says' do
   'Put this in your pipe & smoke it!'
end
  
print("Hey")

get '/' do
  erb :index
end


get "/about" do
      erb :about
end