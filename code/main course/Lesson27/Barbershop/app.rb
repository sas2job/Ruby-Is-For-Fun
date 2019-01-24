#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

def is_barber_exists? db, name 
	db.execute('select * from Barbers where name=?', [name]).length > 0
end

def seed_db db, barbers
	 barbers.each do |barber|
			if !is_barber_exists? db,barber
				db.execute 'insert into Barbers (name) values (?)', [barber]
			end
	 end
end

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

		 db.execute 'CREATE TABLE IF NOT EXISTS 
		 "Barbers"
			(
				"id" INTEGER PRIMARY KEY AUTOINCREMENT, 
				"name" TEXT
			 )'	
			 
			seed_db db, ['Jessie Pinkman','Walter White', 'Gus Fring', 'Mike Ehrmantraut']	 
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

		save_form_data_to_database

		@title = "Спасибо, Вы записаны"

		return erb :message_client

		end
		
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

	# Вывод пользователей (клиентов) из базы данных без использования логина/пароля
get '/clientslist' do
	# erb :clients_admin

	db = get_db

	@results = db.execute 'select * from Users order by id desc'

	erb :watch_clients
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