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
  f.write "User: #{@user_name}, Phone: #{@phone}, Date and Time: #{@date_time}"
  f.close

  erb :message
end