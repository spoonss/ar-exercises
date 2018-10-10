require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Charles", last_name: "Wong", hourly_rate: 55)
@store1.employees.create(first_name: "Jon", last_name: "Wu", hourly_rate: 50)
@store2.employees.create(first_name: "Snowie", last_name: "Kuu", hourly_rate: 40)
@store2.employees.create(first_name: "Steve", last_name: "Ho", hourly_rate: 45)
@store2.employees.create(first_name: "Joe", last_name: "Young", hourly_rate: 70)