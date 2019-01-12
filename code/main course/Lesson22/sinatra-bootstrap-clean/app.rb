#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	# erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"	
		# user_name, phone, date_time
		@user_name = params[:user_name]
		@user_phone = params[:user_phone]
		@user_date_time = params[:user_date_time]
		@choose_hairdresser = params[:choose_hairdresser]
	
		@title = "Thank you!"
		@message = "Уважаемый #{@user_name}, мы ждём вас #{@user_date_time} у выбранного парикмахера #{@choose_hairdresser}."

		f = File.open 'users.txt', 'a'
		f.write "User: #{@user_name}, phone: #{@user_phone}, date and time: #{@user_date_time}. hairdresser: #{@choose_hairdresser}.\n"
		f.close
	
		
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