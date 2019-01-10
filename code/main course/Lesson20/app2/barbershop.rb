require "sinatra"

get '/' do
	erb :index
end

post '/' do
  @user_name = params[:user_name]
  @phone = params[:phone]
  @date_time = params[:date_time]

  @title = 'Thank you!'
  @message = "Dear #{@user_name}, we'll be waiting for you at #{@date_time}"

  f = File.open 'users.txt', 'a'
  f.write "User: #{@user_name}, Phone: #{@phone}, Date and Time: #{@date_time}.\n"
  f.close

  erb :message
end

# Добавить зону /admin где по паролю будет выдаваться список тех, кто записался (из users.txt)

get '/admin' do
  erb :admin
end

post '/admin' do
	@login = params[:login]
	@password = params[:password]

	# провека логина и пароля
	if @login == 'admin' && @password == 'qwerty'
  	@file = File.open("./users.txt","r")
  	erb :watch_result
	 	else
		@report = '<p>Доступ запрещён! Неправильный логин или пароль.</p>'
		erb :admin
	end
end