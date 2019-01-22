require 'sqlite3'

db = SQLite3::Database.new 'barbershop.db'

db.results_as_hash = true

db.execute "SELECT * FROM Users" do |row|
  puts row
  # print row['Username']
  # print "\t-\t"
  # puts row['DateStamp']
  puts "="*35
end
  
db.close