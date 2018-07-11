load 'file_handler.rb'

$sr_no = 1
class Product
  def initialize
    @product_name
    @product_price
    @product_stock
    @company_name
  end

  def add_products
    puts "Enter Products Name:"
    @product_name = gets.chomp
    puts "Enter Products Price:"
    @product_price = gets.chomp
    puts "Stock Item:"
    @product_stock = gets.chomp
    puts "Company Name:"
    @company_name = gets.chomp

    obj = FileHandler.new($sr_no, @product_name, @product_price, @product_stock, @company_name)
    $sr_no += 1
    obj.setdata
  end

  def remove_products
    puts "Enter SR_No To Remove Product:"
    id = gets.chomp
    read_file = open('inventory.txt', 'r')
    tmp_file = open('tmp.txt', 'w')
    File.readlines(read_file).each do | line |
      line_id = line.to_s.split(",")[0]
      if line_id != id
        tmp_file.puts line
      end
    end
    File.truncate('inventory.txt', 0)
    read_file.close
    tmp_file.close
    File.open("inventory.txt","w") { |o| o.puts File.readlines("tmp.txt") }

    # tmp_file = open('tmp.txt', 'r')
    # write_file = open('inventory.txt', 'a+')
    # File.readlines(tmp_file).each do | line |
    #   write_file.puts line
    # end
  end

  def list_of_products
    obj = FileHandler.new
    puts obj.getdata
  end

  def search_products
    puts "Enter Id To Search Product."
    id = gets.chomp
    obj = FileHandler.new
    obj.getdata_by_id(id)
  end

  def edit_products
    puts "Enter Id To Edit Product."
    id = gets.chomp
  end

end