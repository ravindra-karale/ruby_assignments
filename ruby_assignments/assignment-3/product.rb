load 'file_handler.rb'

$sr_no = 1
$array =["sr_no","product_name","product_price","product_stock","company_name"]
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


    product_details = Hash.new
    product_details["sr_no"] = $sr_no.to_s
    product_details["product_name"] = @product_name
    product_details["product_price"] = @product_price
    product_details["product_stock"] = @product_stock
    product_details["company_name"] = @company_name

    obj = FileHandler.new(product_details)
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
  end

  def list_of_products
    obj = FileHandler.new()
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
    puts "Enter New Name of Product."
    new_name = gets.chomp
    puts "Enter New Price of Product."
    new_price = gets.chomp
    puts "Enter New Stock of Product."
    new_stock = gets.chomp
    puts "Enter New Company Name."
    new_company = gets.chomp

    edit_details = Hash.new
    edit_details["sr_no"] = id
    edit_details["product_name"] = new_name
    edit_details["product_price"] = new_price
    edit_details["product_stock"] = new_stock
    edit_details["company_name"] = new_company

    obj = Product.new
    obj.update_stock(edit_details)
    puts "Product Updated Successfully...!"
  end

  def update_stock(hash_array)
    File.truncate('tmp.txt', 0)
    read_file = open('inventory.txt', 'r')
    tmp_file = open('tmp.txt', 'w')
    File.readlines(read_file).each do | line |
      line_id = line.to_s.split(",")[0]
      if line_id == hash_array["sr_no"]
        tmp_file.puts (hash_array["sr_no"] + "," + hash_array["product_name"] + "," + hash_array["product_price"] + "," + hash_array["product_stock"] + "," + hash_array["company_name"])
      else
        tmp_file.puts line
      end
    end
    File.truncate('inventory.txt', 0)
    read_file.close
    tmp_file.close
    File.open("inventory.txt","w") { |o| o.puts File.readlines("tmp.txt") }
  end

  def order_products
    puts "Enter Id of Product To Order."
    order_id = gets.chomp
    puts "Enter Name of Product To Order."
    order_name = gets.chomp

    obj = FileHandler.new
    record = obj.getdata_by_id_name(order_id,order_name)
    array = record.split(",")
    hash_array = ($array.zip(array)).to_h

    puts "Enter User Name."
    user_name = gets.chomp
    puts "Enter Credit Card Number."
    card_number = gets.chomp
    puts "Enter CVV."
    cvv = gets.chomp

    user_details = Hash.new
    user_details["user_name"] = user_name
    user_details["card_number"] = card_number
    user_details["cvv"] = cvv
    stock = array[3]
    if stock > "0"
      hash_array["product_stock"] = ((stock.to_i) - 1).to_s
      obj = Product.new
      obj.update_stock(hash_array)

      obj = FileHandler.new(hash_array,user_details)
      obj.order_set_data
    else
      puts "sorry! product is out of stock."
    end
  end
end