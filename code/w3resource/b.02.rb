# Write a Ruby program to display the current date and time.
require 'date'
current_time = DateTime.now
cdt = current_time.strftime "%d/%m/%Y %H:%M"
puts "Current Date and Time: "+cdt