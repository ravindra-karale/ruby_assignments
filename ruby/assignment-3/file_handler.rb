class FileHandler
  def initialize(sr_no="",product_name="",product_price="",product_stock="",company_name="")
    @product_name = product_name
    @product_price = product_price
    @product_stock = product_stock
    @company_name = company_name
    @id = sr_no
  end

  def getdata
    file = open('inventory.txt', 'r')
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

  def setdata
    open('inventory.txt', 'a+') { |f|
      f.puts @id.to_s + "," + @product_name + "," + @product_price+ "," +@product_stock+ "," +@company_name+"\n"
      f.close
    }

  end
end
