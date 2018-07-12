require_relative 'file_storage'
SEPERATOR = '|'
STORAGE = 'storage.txt'
class Item
  attr_accessor :name, :price, :discount

  def initialize(attrs)
    @attrs = attrs
  end

  def add_item
    FileStorage.new(STORAGE_FILE).append(to_line)
  end

  def to_line
    @attrs.values.join(SEPERATOR)
  end

  def read_items
    FileStorage.new(STORAGE).read_line
  end

end

obj = Item.new({"name"=>"apple","price"=>0.89,"sale"=>0 ,"discount_price"=> 0})
obj.read_items