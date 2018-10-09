require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
puts "total revenue for all stores: #{total_revenue}"
average_revenue = Store.average(:annual_revenue)
puts "average revenue for all stores: #{average_revenue}"
stores_over_1m_sale = Store.where( "annual_revenue > ?", 1000000).count
puts "Stores which are over 1mil sales: #{stores_over_1m_sale}"