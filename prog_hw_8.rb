
require './hw_8'

puts 'Введите идентификатор:'

data_test = DataTest.new
regexp = gets.chomp
puts data_test.test_id(regexp)
  
 
