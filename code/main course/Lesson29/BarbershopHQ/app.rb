#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db"

class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base
end

class Message < ActiveRecord::Base
end

before do
	@barbers = Barber.all
	# Сортировка в обратном порядке
	# @barbers = Barber.order "created_at DESC"
end

get '/' do
	erb :index			
end

get '/visit' do
	erb :visit
end

post '/visit' do
	# user_name, phone, date_time
	@user_name = params[:user_name]
	@user_phone = params[:user_phone]
	@user_date_time = params[:user_date_time]
	@choose_hairdresser = params[:choose_hairdresser]
	@colorpicker = params[:colorpicker]
	
	client = Client.create :name => @user_name, :phone => @user_phone, :datestamp => @user_date_time, :barber => @choose_hairdresser, :color => @colorpicker
	@title = "Спасибо, Вы записаны"

	return erb :message_client

end

post '/contacts' do
	# contact_user_name, contact_user_email, contact_message
	@contact_user_name = params[:contact_user_name]
	@contact_user_email = params[:contact_user_email]
	@contact_message = params[:contact_message]

	@title = "Thank you!"
	@message = "Уважаемый #{@contact_user_name}, мы ответим на ваше сообщение."

	message = Message.create :name => @contact_user_name, :email => @contact_user_email, :message => @contact_message

	erb :message
	
end

get '/contacts' do
	erb :contacts
end