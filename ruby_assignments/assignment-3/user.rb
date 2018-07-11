load 'product.rb'

class User
  def user_menu
    while true
      puts "What would you like to do?
            1. List of Products.
            2. Search Products.
            3. Order Product.
            4. Exit."
      case gets.strip
      when  "1"
        obj = Product.new
        obj.list_of_products
      when  "2"
        obj = Product.new
        obj.search_products
      when  "3"
        obj = Product.new
        obj.order_products
      when "4"
        break
      end
    end
  end
end