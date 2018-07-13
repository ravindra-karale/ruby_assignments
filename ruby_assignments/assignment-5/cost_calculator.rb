require_relative 'item.rb'
require 'set'
STORAGE_FILE = 'storage.txt'

class CostCalculator
  attr_accessor :purchased_items
  def initialize(purchased_items)
    @purchased_items = purchased_items
    @item_and_price
    @item_and_discount
    @item_quntity = {}

  end

  def calculations
    total = 0
    total_save = 0
    line_hash = FileStorage.new(STORAGE_FILE).read_line
    price_total_arr = {}
    @purchased_items.each do | name , quntity |
      line_arr = line_hash.fetch(name)
      actual_price = line_arr[0].to_f
      disc_quentity = line_arr[1].to_f
      disc_price = line_arr[2].to_f

      if quntity >= disc_quentity
        total = total + ((quntity - disc_quentity) * actual_price)
        total = total + disc_price
      else
        total += (quntity * actual_price)
      end
      total_save += ((actual_price * quntity) - total)
      price_total_arr[name] = total
      total = 0
    end
    puts "-----------------------------------\nItem     Quantity      Price\n-----------------------------------"
    @purchased_items.each do | name, quntity |
      puts "#{name}        #{quntity}        #{price_total_arr[name]}"
    end
    sum = price_total_arr.values.reduce:+
    puts "\nTotal price: $#{(sum * 100).round / 100.0}"
    puts "Total saved: $#{(total_save * 100).round / 100.0} today"
  end
end
