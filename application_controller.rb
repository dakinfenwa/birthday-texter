require 'bundler'
Bundler.require
require_relative 'models/message-previewer.rb'
require_relative 'models/message-sender.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  # uncomment the following only for testing preview.erb styling
  # otherwise this should REMAIN commented
  #get '/preview' do
  #  erb :preview
  # end
  
  
  post '/message-previewer' do
    @to_name = params[:to_name]
    @to_bday = params[:to_bday]
    @to_phone = params[:to_phone]
    @from_name = params[:from_name]
    @message = message_previewer(@to_name, @to_bday, @from_name)
    erb :preview
  end
	
  post '/message-sender' do
    @message = params[:message]
    @to_phone = params[:to_phone]
    send_message(@message, @to_phone)
    erb :confirmation
	end

end
