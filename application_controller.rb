require 'bundler'
Bundler.require
require_relative 'models/message-previewer.rb'
require_relative 'models/message-sender.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/message-previewer' do
    @to_name = params[:to_name]
    @to_bday = params[:to_bday]
    @to_phone = params[:to_phone]
    @from_name = params[:from_name]
    erb :preview
  end
	
  post '/message-sender' do
    send_message(params[:message])
    erb :confirmation
	end

end
