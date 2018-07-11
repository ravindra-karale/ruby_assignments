class FileHandler
  def initialize(product_details = {},user_details = {})
    @product_details = product_details
    @user_details = user_details
    puts @product_details
  end

  def getdata
    file = File.open('inventory.txt', 'r')
    file.read
  end

  def getdata_by_id(id)
    file = open('inventory.txt', 'r')
    File.readlines(file).each do | line |
      line_id = line.to_s.split(",")[0]
      if line_id == id
        puts line
      end
    end
  end


  def getdata_by_id_name(id,name)
    file = File.open('inventory.txt', 'r')
    File.readlines(file).each do | line |
      product_id = line.to_s.split(",")[0]
      product_name = line.to_s.split(",")[1]
      if product_name == name and product_id == id
          return line
      end
    end
  end

  def setdata
    f = File.open('inventory.txt', 'a+')
    f.puts (@product_details["sr_no"] + "," + @product_details["product_name"] + "," + @product_details["product_price"] + "," + @product_details["product_stock"] + "," + @product_details["company_name"])
    f.close
  end

  def order_set_data
    f = File.open('orders.txt', 'a')
    f.puts (@product_details["sr_no"] + "," + @product_details["product_name"] + "," + @user_details["user_name"] + "," + @user_details["card_number"] + "," + @user_details["cvv"])
    f.close
  end
end
