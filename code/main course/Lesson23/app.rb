#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb :index
end

post '/visit' do
		# user_name, phone, date_time
		@user_name = params[:user_name]
		@user_phone = params[:user_phone]
		@user_date_time = params[:user_date_time]
		@choose_hairdresser = params[:choose_hairdresser]
		@colorpicker = params[:colorpicker]

		f = File.open './public/users.txt', 'a'
		f.write "User: #{@user_name}, phone: #{@user_phone}, date and time: #{@user_date_time}. Hairdresser: #{@choose_hairdresser}. Color: #{@colorpicker}.\n"
		f.close

	
		# @title = "Thank you!"
		# @message = "Уважаемый #{@user_name},<br> мы ждём вас #{@user_date_time} у выбранного парикмахера #{@choose_hairdresser}.<br>
		# Выбранный цвет #{@colorpicker}."

		erb :message_client
		
	end

	post '/contacts' do
			# contact_user_name, contact_user_email, contact_message
			@contact_user_name = params[:contact_user_name]
			@contact_user_email = params[:contact_user_email]
			@contact_message = params[:contact_message]
		
			@title = "Thank you!"
			@message = "Уважаемый #{@user_name}, мы ответим на ваше сообщение."
	
			f = File.open './public/contacts.txt', 'a'
			f.write "User: #{@contact_user_name}, email: #{@contact_user_email}, message: #{@contact_message}.\n"
			f.close
	
			erb :message
			
		end
		
get '/about' do
	erb :about
end

get '/visit' do
	erb :visit
end

get '/contacts' do
	erb :contacts
end

# Добавить зону /admin где по паролю будет выдаваться список тех, кто записался (из users.txt)

# get '/admin' do
#   erb :admin
# end

get '/clientslist' do
  erb :clients_admin
end

post '/clientslist' do
	@login = params[:login]
	@password = params[:password]

	# провека логина и пароля
	if @login == 'admin' && @password == 'qwerty'
  	@file = File.open("./public/users.txt","r")
  	erb :watch_clients
	 	else
		@report = '<p>Доступ запрещён! Неправильный логин или пароль.</p>'
		erb :watch_clients
	end
end

get '/messageslist' do
  erb :messages_admin
end

post '/messageslist' do
	@login = params[:login]
	@password = params[:password]

	# провека логина и пароля
	if @login == 'admin' && @password == 'qwerty'
  	@file = File.open("./public/contacts.txt","r")
  	erb :watch_messages
	 	else
		@report = '<p>Доступ запрещён! Неправильный логин или пароль.</p>'
		erb :watch_messages
	end
end