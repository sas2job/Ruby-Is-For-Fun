#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

# Method connect with database
def get_db
	db = SQLite3::Database.new 'barbershop.db'
	db.results_as_hash = true
	return db
end

# Configure application
configure do
	db = get_db
	db.execute 'CREATE TABLE IF NOT EXISTS 
	 "Users"
	  (
	 		"id" INTEGER PRIMARY KEY AUTOINCREMENT, 
			"Username" TEXT,
			"Phone" TEXT, 
	 		"DateStamp" TEXT, 
	 		"Barber" TEXT, 
	 		"Color" TEXT
		 )'
		db.close	 
end

# Method save form data to database
def save_form_data_to_database
	db = get_db
	db.execute 'insert into Users 
		 (
			 username,
			 phone,
			 datestamp,
			 barber,
			 color 
		 )
		 values ( 	?, ?, ?, ?, ? )', [@user_name, @user_phone, @user_date_time, @choose_hairdresser, @colorpicker]
	db.close		 
end

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
		
		# хеш
		hh = {	:user_name =>	'Введите имя',
						:user_phone => 'Введите номер телефона',
						:user_date_time => 'Введите дату и время'	}

		@error = hh.select {|key,_| params[key] == ""}.values.join(", ")

		if @error != ''
			return erb :visit
		else

		# f = File.open './public/users.txt', 'a'
		# f.write "User: #{@user_name}, phone: #{@user_phone}, date and time: #{@user_date_time}. Hairdresser: #{@choose_hairdresser}. Color: #{@colorpicker}.\n"
		# f.close
		save_form_data_to_database

		@title = "Спасибо, Вы записаны"

		return erb :message_client

		end


		# @title = "Thank you!"
		# @message = "Уважаемый #{@user_name},<br> мы ждём вас #{@user_date_time} у выбранного парикмахера #{@choose_hairdresser}.<br>
		# Выбранный цвет #{@colorpicker}."

		# erb :message_client
		
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