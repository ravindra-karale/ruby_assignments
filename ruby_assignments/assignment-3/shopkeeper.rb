load 'product.rb'
class Shopkeeper

  def product_menu
    while true
      puts "What would you like to do?
            1. Add Products.
            2. Remove Products.
            3. List of Products.
            4. Search Products.
            5. edit Products.
            6. Exit."
      case gets.strip
      when  "1"
        obj = Product.new
        obj.add_products
      when  "2"
        obj = Product.new
        obj.remove_products
      when  "3"
        obj = Product.new
        obj.list_of_products
      when  "4"
        obj = Product.new
        obj.search_products
      when  "5"
        obj = Product.new
        obj.edit_products
      when "6"
        break
      end
    end
  end
end
