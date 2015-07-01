require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/preview' do
    erb :index # Brian's updated test
  end

	
	post '/generate_message' do
		erb :generated # Dammy's test
	end

end
