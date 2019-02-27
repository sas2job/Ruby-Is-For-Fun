#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db"

class Client < ActiveRecord::Base
	validates :name, presence: true, length: {minimum: 3}
	validates :phone, presence: true
	validates :datestamp, presence: true
	validates :barber, presence: true
	validates :color, presence: true

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
	@c = Client.new
	erb :visit
end

post '/visit' do

	@c = Client.new params[:client]
	if @c.save
		@title = "Спасибо, Вы записаны"
		return erb :message_client
	else	
		@title = "Ошибка"
		@error = @c.errors.full_messages.first
		return erb :visit
	end
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

get '/barber/:id' do
	@barber = Barber.find(params[:id])
	erb :barber
end

get '/bookings' do
	@clients = Client.order('created_at DESC')
	erb :bookings
end

get '/client/:id' do
	@client = Client.find(params[:id])
	erb :client
end