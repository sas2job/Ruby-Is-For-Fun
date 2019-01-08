require "sinatra"

get '/' do
	erb :index
end

post '/' do
	@login = params[:aaa]
	@pswd = params[:bbb]
	if @login == 'admin' && @pswd == 'secret'
		erb :welcome
	else
		@if_stop = "Accees Denied"
		erb :index		
	end
end