require_relative 'cost_calculator.rb'
require 'set'
puts "Please enter all items purchased separated by comma.i.e(,)"
purchased_items = gets.chomp.split(',')
item_quntity = {}
# purchased_items = ["milk", "milk", "bread", "banana", "bread", "bread", "bread", "milk", "apple"]
purchased_items.to_set.to_a.each do |x|
      item_quntity[x] = purchased_items.count(x)
    end

obj = CostCalculator.new(item_quntity)
obj.calculations