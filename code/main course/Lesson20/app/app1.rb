require "sinatra"

get '/' do
	erb :index
end

get '/contacts' do
	@title = 'Contacts'
	@message = 'Phone number: 111222'

	erb :message
end

get '/faq' do
	under_construction
end

get '/something' do
	under_construction
end

def under_construction
	@title = 'Under construction'
	@message = 'This page is under construction'

	erb :message
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