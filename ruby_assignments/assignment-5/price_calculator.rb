require_relative 'cost_calculator.rb'
require_relative 'item.rb'
require 'set'
puts "Please enter all items purchased separated by comma.i.e(,)"
purchased_items = gets.chomp.split(',')
# obj = Item.new({"name"=>"magee","price"=>11.0,"sale"=>2 ,"discount_price"=> 20})
# obj.add_item
item_quntity = {}
# purchased_items = ["milk", "milk", "bread","magee","magee","magee", "banana", "bread", "bread", "bread", "milk", "apple"]
purchased_items.to_set.to_a.each do |x|
      item_quntity[x] = purchased_items.count(x)
    end

obj = CostCalculator.new(item_quntity)
obj.calculations