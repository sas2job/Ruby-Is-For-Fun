#encoding: utf-8
require 'rubygems'
require 'sinatra'
# require 'activerecord'
require 'sinatra/reloader'
require 'sinatra/activerecord'

# подключение к базе данных
set	:database, "sqlite3:barbershop.db"
 
# создание сущности
class Client < ActiveRecord::Base

end
 
class Barber < ActiveRecord::Base

end

get '/' do
	erb :index
end