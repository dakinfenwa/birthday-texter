require 'bundler'
Bundler.require
require_relative 'models/message-previewer.rb'
require_relative 'models/message-sender.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/message-previewer' do
    @bday = params[:birthday]
    erb :preview
  end
	
  post '/message-sender' do
    send_message(params[:message])
    erb :confirmation
	end

end
