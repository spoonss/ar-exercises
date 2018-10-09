require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.new name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true
surrey.save
whistler = Store.new name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false
whistler.save
yaletown = Store.new name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true
yaletown.save

# puts Store.count
# puts Store.where(mens_apparel: true).where(womens_apparel: false).count

# @mens_stores = Store.where({ mens_apparel: true, womens_apparel: false })


@mens_stores = Store.where({ mens_apparel: true })
puts "Store which carries Men's Apparel"
@mens_stores.each do |m|
  p "Store name: #{m.name}. Annual Revenus: #{m.annual_revenue}"
end


@womens_stores = Store.where({ womens_apparel: true}).where( "annual_revenue < ?", 1000000)
  p "Store which carries Womens's Apparel & less than 1mil revenue"
@womens_stores.each do |m|
  p "Store name: #{m.name}. Annual Revenus: #{m.annual_revenue}"
end

