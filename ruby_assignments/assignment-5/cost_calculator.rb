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
    line_hash = FileStorage.new(STORAGE_FILE).read_line
    price_total_arr = []
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
      price_total_arr.push(total)
      total = 0
    end
    puts price_total_arr
    puts total
  end
end
