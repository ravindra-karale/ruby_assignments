load 'product.rb'
class Shopkeeper

  def product_menu
    puts "What would you like to do?
          1. Add Products.
          2. Remove Products.
          3. List of Products.
          4. Search Products.
          5. edit Products."
    case gets.strip
    when  "1"
      obj = Product.new
      obj.add_products
      product_menu
    when  "2"
      obj = Product.new
      obj.remove_products
      product_menu
    when  "3"
      obj = Product.new
      obj.list_of_products
      product_menu
    when  "4"
      obj = Product.new
      obj.search_products
      product_menu
    when  "5"
      obj = Product.new
      obj.edit_products
      product_menu
    end
  end
end

obj = Shopkeeper.new
obj.product_menu
