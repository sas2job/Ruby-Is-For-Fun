require 'sqlite3'

# подключение базы данных
db = SQLite3::Database.new 'test.sqlite'