load 'product.rb'

class User
  def user_menu
      puts "What would you like to do?
            1. List of Products.
            2. Search Products.
            3. Buy Product."
      case gets.strip
      when  "1"
        obj = Product.new
        obj.list_of_products
        user_menu
      when  "2"
        obj = Product.new
        obj.search_products
        # user_menu
      when  "3"
        # obj = Product.new
        # obj.list_of_products
      end
    end
  end

obj = User.new
obj.user_menu
