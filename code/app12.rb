#
puts "Your salary?"
salary_month = gets.to_i
tax_rate = 0.3
tax = salary_month * tax_rate
puts "="*80
puts "Tax on month: #{salary_month * tax_rate}"
annual_salary = (salary_month - tax) * 12
puts "Annual salary: #{annual_salary}"
puts "Accumulated for the year 15%: #{annual_salary * 0.15}"
puts "Accumulated for the 5 years 15%: #{annual_salary * 0.15 * 5}"