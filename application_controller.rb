require 'bundler'
require './models/model'
Bundler.require

class MyApp < Sinatra::Base
 
  get '/' do
    "Hello, Class!"
  end
  
  get '/test' do
  	"this is a test"
  end
  
  get '/test1' do
  	erb:index
  end
  
    
  get '/input/:cat' do
    @user_name = params[:cat]
    "Hello #{@user_name}!"
  end
  

  get '/food_form'do
  	erb:food_form
  end
    
  post '/food' do
	"I would have #{params[:favorite_falvor]} ice cream wih #{params[:favorite_fruit]}. I would also add #{params[:favorite_candy]} and #{params[:favorite_syrup]}."
  end
 
end